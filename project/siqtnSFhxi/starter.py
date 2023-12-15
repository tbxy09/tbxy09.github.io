# This script is used to fetch the latest trending GitHub repositories
import requests
from bs4 import BeautifulSoup

# URL for GitHub trending page
url = "https://github.com/trending"

# Function to get trending repositories
def get_trending_repos():
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.content, 'html.parser')
        repos = soup.find_all('article', class_='Box-row')
        trending_repos = []
        for repo in repos:
            title = repo.find('h1', class_='h3 lh-condensed').text.strip()
            url = repo.find('a')['href']
            trending_repos.append({'title': title, 'url': 'https://github.com' + url})
        return trending_repos
    else:
        return 'Failed to fetch trending repositories'

# Example usage
if __name__ == '__main__':
    print(get_trending_repos())