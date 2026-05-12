# Day 41 – Triggers & Matrix Builds

## Task
Your pipeline runs on push. Today you learn **every way to trigger a workflow** and how to run jobs across multiple environments at once.

---

## Challenge Tasks

### Task 1: Trigger on Pull Request
1. Create `.github/workflows/pr-check.yml`
2. Trigger it only when a pull request is **opened or updated** against `main`
3. Add a step that prints: `PR check running for branch: <branch name>`
4. Create a new branch, push a commit, and open a PR
5. Watch the workflow run automatically

**Verify:** Does it show up on the PR page?

[pr-check.yml](https://github.com/Mohit-lalwani-flow/github-actions-practice/blob/main/.github/workflows/pr-check.yml)

![snapshot](images/task1-1.png)

![snapshot](images/task1-2.png)

---

### Task 2: Scheduled Trigger
1. Add a `schedule:` trigger to any workflow using cron syntax
2. Set it to run every day at midnight UTC
3. Write in your notes: What is the cron expression for every Monday at 9 AM?
> 0 9 * * 1

[day41-schedule.yml](https://github.com/Mohit-lalwani-flow/github-actions-practice/blob/main/.github/workflows/day41-schedule.yml)

![snapshot](images/task2.png)

---

### Task 3: Manual Trigger
1. Create `.github/workflows/manual.yml` with a `workflow_dispatch:` trigger
2. Add an **input** that asks for an `environment` name (staging/production)
3. Print the input value in a step
4. Go to the **Actions** tab → find the workflow → click **Run workflow**

**Verify:** Can you trigger it manually and see your input printed?


[manual.yml](https://github.com/Mohit-lalwani-flow/github-actions-practice/blob/main/.github/workflows/manual.yml)

- for prod environment
![snapshot](images/task3-1.png)

- for staging environment
![snapshot](images/task3-2.png)

---

### Task 4: Matrix Builds
Create `.github/workflows/matrix.yml` that:
1. Uses a matrix strategy to run the same job across:
   - Python versions: `3.10`, `3.11`, `3.12`
2. Each job installs Python and prints the version
3. Watch all 3 run in parallel

Then extend the matrix to also include 2 operating systems — how many total jobs run now?

[matrix.yml](https://github.com/Mohit-lalwani-flow/github-actions-practice/blob/main/.github/workflows/manual.yml)

![snapshot](images/task4-1.png)

- extended workflow 
![snapshot](images/task4-2.png)

---

### Task 5: Exclude & Fail-Fast
1. In your matrix, **exclude** one specific combination (e.g., Python 3.10 on Windows)
2. Set `fail-fast: false` — trigger a failure in one job and observe what happens to the rest
3. Write in your notes: What does `fail-fast: true` (the default) do vs `false`?

- excluded case in workflow
![snapshot](images/task5-1.png)

- excluded case in workflow with `fail-fast: false`
![snaphsot](images/task5-2.png)

In false case all the parallel jobs will work smoothly event if one have a error.

- excluded case in workflow with `fail-fast: true`
![snaphsot](images/task5-3.png)

In true case all the parallel jobs will stop if one have a error.



