function loadYAMLFile(filePath, callback) {
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                const yamlData = xhr.responseText;
                const jsonData = jsyaml.load(yamlData);

                callback(null, jsonData);
            } else {
                callback("Error loading YAML file", null);
            }
        }
    };

    xhr.open("GET", filePath, true);

    xhr.send();
}

const yamlFilePath = 'index.yaml';

function createCard(chart, chartDescription, chartVersion){
    chartName = chart.split("-").map(word => word.charAt(0).toUpperCase() + word.slice(1)).join(" ")
    const cardHtml = `
        <div class="col">
            <div class="card" style="width: 18rem;">
            <img src="./HELM.svg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">${chartName}</h5>
                <p class="card-text">${chartDescription}</p>
                <p class="card-text"> <strong> Current Version: ${chartVersion} </strong> </p>
                <button onclick="convertMarkdownToHTML('${chart}')" class="btn btn-primary">Details</button>
            </div>
            </div>
        </div>
    `;

    return cardHtml;
}


function convertMarkdownToHTML(chart) {
    var mdFilePath = `https://raw.githubusercontent.com/ever-co/ever-charts/main/charts/${chart}/README.md`

    fetch(mdFilePath)
        .then(response => {
            if (!response.ok) {
                throw new Error('Failed to load Markdown file');
            }
            return response.text();
        })
        .then(markdownContent => {
            var htmlContent = marked.marked(markdownContent);
            document.getElementById('output').innerHTML = htmlContent;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}


loadYAMLFile(yamlFilePath, function (error, data) {
    if (error) {
        console.error(error);
    } else {
        Object.keys(data.entries).forEach(entry => {
            const container = document.getElementById('cardContainer');
            chartDescription = data.entries[entry][0]["description"]
            chartVersion = data.entries[entry][0]["version"]
            const cardHtml = createCard(entry, chartDescription, chartVersion)
            container.innerHTML += cardHtml
        })
    }
});