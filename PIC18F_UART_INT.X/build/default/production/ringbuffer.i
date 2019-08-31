# 1 "ringbuffer.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "ringbuffer.c" 2
# 1 "./ringbuffer.h" 1
# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\inttypes.h" 1 3



# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\musl_xc8.h" 1 3
# 4 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\inttypes.h" 2 3






# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\features.h" 1 3
# 10 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\inttypes.h" 2 3

# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\stdint.h" 1 3
# 22 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\stdint.h" 3
# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 1 3
# 135 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 150 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 166 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;




typedef __int24 int24_t;




typedef long int32_t;





typedef long long int64_t;
# 196 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef __uint24 uint24_t;




typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 237 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 155 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\stdint.h" 3
# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/stdint.h" 1 3
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 155 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\stdint.h" 2 3
# 11 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\inttypes.h" 2 3





# 1 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\bits/alltypes.h" 1 3
# 16 "D:/Program Files (x86)/Microchip/xc8/v2.05/pic/include/c99\\inttypes.h" 2 3


typedef struct { intmax_t quot, rem; } imaxdiv_t;

intmax_t imaxabs(intmax_t);
imaxdiv_t imaxdiv(intmax_t, intmax_t);

intmax_t strtoimax(const char *restrict, char **restrict, int);
uintmax_t strtoumax(const char *restrict, char **restrict, int);
# 1 "./ringbuffer.h" 2
# 29 "./ringbuffer.h"
typedef uint8_t ring_buffer_size_t;
# 42 "./ringbuffer.h"
typedef struct ring_buffer_t ring_buffer_t;






struct ring_buffer_t {

  char buffer[32];

  ring_buffer_size_t tail_index;

  ring_buffer_size_t head_index;
};






void ring_buffer_init(ring_buffer_t *buffer);






void ring_buffer_queue(ring_buffer_t *buffer, char data);







void ring_buffer_queue_arr(ring_buffer_t *buffer, const char *data, ring_buffer_size_t size);







uint8_t ring_buffer_dequeue(ring_buffer_t *buffer, char *data);
# 95 "./ringbuffer.h"
uint8_t ring_buffer_dequeue_arr(ring_buffer_t *buffer, char *data, ring_buffer_size_t len);







uint8_t ring_buffer_peek(ring_buffer_t *buffer, char *data, ring_buffer_size_t index);






uint8_t ring_buffer_is_empty(ring_buffer_t *buffer);






uint8_t ring_buffer_is_full(ring_buffer_t *buffer);






ring_buffer_size_t ring_buffer_num_items(ring_buffer_t *buffer);
# 1 "ringbuffer.c" 2







void ring_buffer_init(ring_buffer_t *buffer) {
  buffer->tail_index = 0;
  buffer->head_index = 0;
}

void ring_buffer_queue(ring_buffer_t *buffer, char data) {

  if(ring_buffer_is_full(buffer)) {


    buffer->tail_index = ((buffer->tail_index + 1) & (32 -1));
  }


  buffer->buffer[buffer->head_index] = data;
  buffer->head_index = ((buffer->head_index + 1) & (32 -1));
}

void ring_buffer_queue_arr(ring_buffer_t *buffer, const char *data, ring_buffer_size_t size) {

  ring_buffer_size_t i;
  for(i = 0; i < size; i++) {
    ring_buffer_queue(buffer, data[i]);
  }
}

ring_buffer_size_t ring_buffer_dequeue(ring_buffer_t *buffer, char *data) {
  if(ring_buffer_is_empty(buffer)) {

    return 0;
  }

  *data = buffer->buffer[buffer->tail_index];
  buffer->tail_index = ((buffer->tail_index + 1) & (32 -1));
  return 1;
}

ring_buffer_size_t ring_buffer_dequeue_arr(ring_buffer_t *buffer, char *data, ring_buffer_size_t len) {
  if(ring_buffer_is_empty(buffer)) {

    return 0;
  }

  char *data_ptr = data;
  ring_buffer_size_t cnt = 0;
  while((cnt < len) && ring_buffer_dequeue(buffer, data_ptr)) {
    cnt++;
    data_ptr++;
  }
  return cnt;
}

ring_buffer_size_t ring_buffer_peek(ring_buffer_t *buffer, char *data, ring_buffer_size_t index) {
  if(index >= ring_buffer_num_items(buffer)) {

    return 0;
  }


  ring_buffer_size_t data_index = ((buffer->tail_index + index) & (32 -1));
  *data = buffer->buffer[data_index];

  return 1;
}

uint8_t ring_buffer_is_empty(ring_buffer_t *buffer) {
  return (buffer->head_index == buffer->tail_index);
}

uint8_t ring_buffer_is_full(ring_buffer_t *buffer) {
  return ((buffer->head_index - buffer->tail_index) & (32 -1)) == (32 -1);
}

ring_buffer_size_t ring_buffer_num_items(ring_buffer_t *buffer) {
  return ((buffer->head_index - buffer->tail_index) & (32 -1));
}
