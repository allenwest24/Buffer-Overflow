# Buffer-Overflow
Buffer Overflow of a vulnerable program that doesn;t properly manage its buffer.

# Introduction
A buffer overflow occurs when a program or process tries to store more data in a buffer (or some temporary data storage area)
than that buffer was intended to hold. This extra data, which has to go somewhere, then overflows adjacent memory regions,
corrupting or overwriting the valid data stored there. If the buffer is stored on the stack, as it is the case for local
variables in C, control information such as function return addresses can be altered. This allows the attacker to redirect the
execution flow to arbitrary memory addresses. By injecting machine code into the process memory (e.g., as part of the data used 
to overflow the buffer, or in environment variables), the attacker can redirect the execution flow to this code and execute 
arbitrary machine instructions with the privileges of the running process. Thus, it is imperative that the length of the input
data is checked before copied into buffers of fixed lengths. Unfortunately, a number of popular C functions (e.g., strcpy,
strcat, sprintf, gets, or fgets) do not perform such length checks, making many applications vulnerable to this kind of attack.


# Storyline

After the stunt that you pulled off during the last penetration testing job, your image in the company has improved 
considerably. You are not the "newbie" anymore and your colleagues look at you with respect. Hey, someone even offered some of
his three day old pizza to you during a coding session -- he really must respect you ;-) A bank located in Sophia Antipolis
contacts SecLab Inc. and requests help. They have been observing suspicious activity in their network. First, they think it has
to do with the financial crisis... but then, they realize that this does not make much sense ;-) Someone, apparently, has been
deleting log files as the root user. This is strange, as only a couple of people in the bank have access to the administrator 
accounts... How could this be? Hmmm... Wait a minute, the whole thing smells as if the root user of the bank has been pwn3d.


Hmmmm... a port scan quickly reveals some open ports, and you are able to log into the guest account (no password, of course) of
some unused machine. Now, you want to continue your journey, but more privileges are needed and you are "burning" for root. You
find three programs that apparently use unsafe C string operations, probably written by an intern and forgotten long time ago.
Why they are suid root remains a secret, though ... :-) The rest, as they say, is computer science history...


# Detailed Description
Your task is to exploit stack buffer overflow vulnerabilities in three programs that have their set-guid (i.e. set group 
identification) bit enabled. The programs are installed under /usr/local/bin/prog[5-7]. 
