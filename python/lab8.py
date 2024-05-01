import json

with open('data.json', 'r') as file:
    data = json.load(file)

output_data = []
for repo in data[:5]:
    name = repo.get('name', '')
    html_url = repo.get('html_url', '')
    updated_at = repo.get('updated_at', '')
    visibility = repo.get('visibility', '')

    line = f"{name},{html_url},{updated_at},{visibility}\n"
    output_data.append(line)

with open('chacon.csv', 'w') as file:
    file.writelines(output_data)
