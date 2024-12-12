# Job Scheduling System

In this project, I have implemented various CPU Job Scheduling algorithms.

## How to Start

1. Navigate to the `datagen` folder in your command prompt and execute the following command:
   ```bash
   make ./datagen ./datagenRR ./datagen_mq
   ```
   This will generate random data.

2. Next, navigate to the `algorithms` folder in your command prompt and execute:
   ```bash
   make ./my_program
   ```
   for each algorithm.

3. The output for each algorithm, along with the statistics, will be available in the `outputs` folder.

## Implemented Algorithms

### 1. First Come First Serve (FCFS)
- **Key Idea:** Jobs are executed in the order they arrive.
- **Usage:** Simple but inefficient when jobs with long burst times arrive first (convoy effect).
- **Data Structure:** Queue (FIFO order).
- **Execution Time:** O(n) for calculating metrics (e.g., waiting time, turnaround time).

### 2. Highest Response Ratio Next (HRRN)
- **Key Idea:** Prioritizes jobs with a high response ratio.
- **Usage:** Balances long and short jobs effectively.
- **Data Structure:** Priority Queue (sorted by response ratio).
- **Execution Time:** O(n^2) (for sorting).

### 3. Longest Job First (LJF)
- **Key Idea:** Selects the job with the longest burst time first (non-preemptive).
- **Usage:** Maximizes CPU usage but may cause starvation for smaller jobs.
- **Data Structure:** Max Heap or Priority Queue.
- **Execution Time:** O(n log n) for sorting the queue.

### 4. Longest Remaining Time First (LRTF)
- **Key Idea:** A preemptive version of LJF, prioritizing the job with the longest remaining burst time.
- **Usage:** High CPU usage but frequent preemption increases context switching overhead.
- **Data Structure:** Max Heap or Priority Queue.
- **Execution Time:** O(n log n) for dynamic updates in the heap.

### 5. Priority Scheduling
- **Key Idea:** Jobs are executed based on priority (either higher or lower numerical values).
- **Usage:** Useful for critical tasks but may cause starvation for low-priority jobs.
- **Data Structure:** Priority Queue or Heap.
- **Execution Time:** O(n log n) for managing the queue.

### 6. Round Robin (RR)
- **Key Idea:** Jobs are executed in cyclic order with a fixed time quantum.
- **Usage:** Ensures fairness; best for time-sharing systems but can increase waiting time if the quantum is too small.
- **Data Structure:** Circular Queue.
- **Execution Time:** O(n) per cycle; total time depends on the number of cycles.

### 7. Shortest Job First (SJF)
- **Key Idea:** Executes the job with the shortest burst time (non-preemptive).
- **Usage:** Reduces average waiting time but may cause starvation for longer jobs.
- **Data Structure:** Min Heap or Priority Queue.
- **Execution Time:** O(n log n) for sorting the queue.

### 8. Shortest Remaining Time First (SRTF)
- **Key Idea:** A preemptive version of SJF, prioritizing the job with the shortest remaining burst time.
- **Usage:** Minimizes turnaround time but involves frequent context switching.
- **Data Structure:** Min Heap or Priority Queue.
- **Execution Time:** O(n log n) for updates on every new job or preemption.

## About the Project
This project was undertaken to implement Job Scheduling algorithms as part of the DA 212 lab course. A special thanks to our instructors:
- **Dr. Gaurav Trivedi**

and the teaching assistants:
- **Mr. Pallapu Mohan Krishna**
- **Mr. Anupam Kumar**

without whom this project wouldn't have been possible.
