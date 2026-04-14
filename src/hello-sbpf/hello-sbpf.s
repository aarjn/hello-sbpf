// const MESSAGE_LENGTH: usize = 14
.equ MESSAGE_LENGTH, 12

// entrypoint
.globl entrypoint

entrypoint:
  lddw r1, message
  lddw r2, MESSAGE_LENGTH
  call sol_log_
  exit

// read-only data
.rodata
  message: .ascii "Hello, SBPF!"

// something like this 
// let message = "Hello, SBPF!";
// sol_log(message.as_ptr(), message.len());
//         ^^^^^^^^^^^^^^ this is what lddw r1, message does
//                           ^^^^^^^^^^^^ this is what lddw r2, 14 does
