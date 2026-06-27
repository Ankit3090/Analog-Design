import subprocess
import datetime
import os
import sys

# --- CONFIGURATION ---
# Point this to the local folder containing your circuit files
REPO_PATH = r"C:\Users\Ankit Negi\OneDrive\Documents\hustle\OpenAI" 

# Your remote repository URL
GITHUB_URL = "https://github.com/Ankit3090/Analog-Design.git"
# ---------------------

def run_git_command(command, ignore_errors=False):
    """Executes a git command in the REPO_PATH and returns the output."""
    try:
        result = subprocess.run(
            command,
            cwd=REPO_PATH,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=not ignore_errors
        )
        return result.stdout.strip()
    except subprocess.CalledProcessError as e:
        if not ignore_errors:
            print(f"Error executing {' '.join(command)}:\n{e.stderr}")
            sys.exit(1)
        return ""

def setup_and_update_github():
    if not os.path.exists(REPO_PATH):
        print(f"Error: The directory {REPO_PATH} does not exist.")
        return

    git_folder = os.path.join(REPO_PATH, ".git")

    # PHASE 1: INITIAL SETUP (If .git folder doesn't exist)
    if not os.path.exists(git_folder):
        print("Starting first-time GitHub setup...")
        
        run_git_command(["git", "init"])
        run_git_command(["git", "branch", "-M", "main"])
        
        # Check if remote origin already exists, add if it doesn't
        remotes = run_git_command(["git", "remote", "-v"], ignore_errors=True)
        if "origin" not in remotes:
            run_git_command(["git", "remote", "add", "origin", GITHUB_URL])
        
        run_git_command(["git", "add", "."])
        run_git_command(["git", "commit", "-m", "Initial commit of analog circuit designs"])
        
        print("Pushing initial files to GitHub...")
        run_git_command(["git", "push", "-u", "origin", "main"])
        print("First-time setup and upload complete!")
        return

    # PHASE 2: REGULAR UPDATE (If repository is already set up)
    status = run_git_command(["git", "status", "--porcelain"])
    
    if status:
        print("Modifications detected in circuit files. Committing and pushing...")
        run_git_command(["git", "add", "."])
        
        # Format the commit message with the current date and time
        timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        commit_msg = f"Automated sync: {timestamp}"
        
        run_git_command(["git", "commit", "-m", commit_msg])
        run_git_command(["git", "push", "origin", "main"])
        
        print("GitHub update complete!")
    else:
        print("Working directory clean. No new changes to upload.")

if __name__ == "__main__":
    setup_and_update_github()