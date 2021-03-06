//
// Created by Jack on 24/5/17.
//

#ifndef QUEUE_H
#define QUEUE_H

#include <stdint.h>

#ifndef BYTE_TYPEDEF

#define BYTE_TYPEDEF

typedef unsigned char BYTE;

#endif
typedef struct work_t *Work;
typedef struct queue_t *Queue;

struct queue_t {
    Work work;
    int sockfd;
    Queue next;
};

struct work_t {
    char difficulty[9];
    char seed[65];
    char start[17];
    char worker_count[3];
};

void enqueue(Queue *q, int sockfd, char *diff_stream, char *seed_stream, char *start_stream, char *worker_stream);
void dequeue(Queue *q);
/* removes the specified item from the list */
void removeWork(Queue *q, int sockfd);

#endif //QUEUE_H
