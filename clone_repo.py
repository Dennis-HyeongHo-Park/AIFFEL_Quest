import subprocess

def clone_repo():
    repo_url = "https://github.com/songys/Chatbot_data.git"
    subprocess.run(["git", "clone", repo_url])

if __name__ == "__main__":
    clone_repo()
