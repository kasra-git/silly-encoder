# 📦 super secure Silly encrypter-decrypter bash script.

(add your badges here)

> *Your documentation is a direct reflection of your software, so hold it to the same standards.*


## 🌟 Highlights

- Easy to use!
- step by step manual
- with progress bar
- use AES-128 for encryption.
- can encrypt and dectypt eny file and directory you want.
- it can also broke your filesystem if you are not careful. (can encrypt your entire file system then your OS won't boot anymore)


## ℹ️ Overview

A paragraph explaining your work, who you are, and why you made it.


### ✍️ Authors

Mention who you are and link to your GitHub or organization's website.


## 🚀 Usage

step 1: RUN the script;
```bash
silly_encode.sh
```

step 2: Give it your directory for decryption/encryption. Hit Enter for default (default is yor ~/Desktop).

Example
```bash
bahman@XubuntuMachine:~/Desktop$ silly_encoder.sh 

          *-----------------------------------*
          |  >> Directory Decoder/Encoder <<  |  
          |     Bachelor's Final Project      |  
          |        Author : Kasra Nasiri      |  
          |         ferdosi University        |  
          |             Summer 2024           |  
          *-----------------------------------*
 
-------------------------
>PATH(default=/home/bahman/Desktop) :/home/bahman/Desktop/test
```
step 3: You want encrypt or decrypt your desired PATH (you chose it in step 2)?  [Hit E/e for encryption or D/d for decryption].

Example : encryping /home/bahman/Desktop/test
```bash
bahman@XubuntuMachine:~/Desktop$ silly_encoder.sh 

          *-----------------------------------*
          |  >> Directory Decoder/Encoder <<  |  
          |     Bachelor's Final Project      |  
          |        Author : Kasra Nasiri      |  
          |         ferdosi University        |  
          |             Summer 2024           |  
          *-----------------------------------*
 
-------------------------
>PATH(default=/home/bahman/Desktop) :/home/bahman/Desktop/test/

>/home/bahman/Desktop/test/ Encrypt/Decrypt? [E/d] e

```
step 4: Enter your password for Encryption, then confirm it again (For security reasons NO character has been shown for typing password).

### !WARNING! : REMEMBER YOUR PASSWORD. you need it for decryption otherwise your files will be gone!

Exmple

```bash

bahman@XubuntuMachine:~/Desktop$ silly_encoder.sh 

          *-----------------------------------*
          |  >> Directory Decoder/Encoder <<  |  
          |     Bachelor's Final Project      |  
          |        Author : Kasra Nasiri      |  
          |         ferdosi University        |  
          |             Summer 2024           |  
          *-----------------------------------*
 
-------------------------
>PATH(default=/home/bahman/Desktop) :/home/bahman/Desktop/test/

>/home/bahman/Desktop/test/ Encrypt/Decrypt? [E/d] e

>Enter password : 
>Confirm password : 

1)/home/bahman/Desktop/test/Project.sh >>/home/bahman/Desktop/test/Project.sh.enc
2)/home/bahman/Desktop/test/dash_akol_1080p_(Tele-Film.ir).mp4 >>/home/bahman/Desktop/test/dash_akol_1080p_(Tele-Film.ir).mp4.enc
3)/home/bahman/Desktop/test/dir1/3.txt >>/home/bahman/Desktop/test/dir1/3.txt.enc
4)/home/bahman/Desktop/test/nn/CIA Kubark 1-60.pdf >>/home/bahman/Desktop/test/nn/CIA Kubark 1-60.pdf.enc
5)/home/bahman/Desktop/test/nn/Plain Text.txt >>/home/bahman/Desktop/test/nn/Plain Text.txt.enc
6)/home/bahman/Desktop/test/2.txt >>/home/bahman/Desktop/test/2.txt.enc
done!

bahman@XubuntuMachine:~/Desktop$ 

```
* script add .enc to end of files for encryption, and encrypt every file and directory in chosen path Recursively.
  
Example
```bash
bahman@XubuntuMachine:~/Desktop$ tree ./test/
./test/
├── 2.txt.enc
├── dash_akol_1080p_(Tele-Film.ir).mp4.enc
├── dir1
│   └── 3.txt.enc
├── nn
│   ├── CIA Kubark 1-60.pdf.enc
│   └── Plain Text.txt.enc
└── Project.sh.enc

2 directories, 6 files
bahman@XubuntuMachine:~/Desktop$ 
```

step 5: for decryptin after step1 and step 2 , hit D/d for decryptin and in step 4 enter your password already use in encryptin this path.

Exapmle.

```bash
bahman@XubuntuMachine:~/Desktop$ silly_encoder.sh 

          *-----------------------------------*
          |  >> Directory Decoder/Encoder <<  |  
          |     Bachelor's Final Project      |  
          |        Author : Kasra Nasiri      |  
          |         ferdosi University        |  
          |             Summer 2024           |  
          *-----------------------------------*
 
-------------------------
>PATH(default=/home/bahman/Desktop) :/home/bahman/Desktop/test/

>/home/bahman/Desktop/test/ Encrypt/Decrypt? [E/d] d

>Enter password : 
>Confirm password : 

1)/home/bahman/Desktop/test/Project.sh.enc >>/home/bahman/Desktop/test/Project.sh 
2)/home/bahman/Desktop/test/dir1/3.txt.enc >>/home/bahman/Desktop/test/dir1/3.txt 
3)/home/bahman/Desktop/test/dash_akol_1080p_(Tele-Film.ir).mp4.enc >>/home/bahman/Desktop/test/dash_akol_1080p_(Tele-Film.ir).mp4 
4)/home/bahman/Desktop/test/nn/Plain Text.txt.enc >>/home/bahman/Desktop/test/nn/Plain Text.txt 
5)/home/bahman/Desktop/test/nn/CIA Kubark 1-60.pdf.enc >>/home/bahman/Desktop/test/nn/CIA Kubark 1-60.pdf 
6)/home/bahman/Desktop/test/2.txt.enc >>/home/bahman/Desktop/test/2.txt 
done!

bahman@XubuntuMachine:~/Desktop$ 

```

*after decryption .enc at end of files will ber remove, and your file is readable as if you never used silly_encoder.sh ;)))

```bash
bahman@XubuntuMachine:~/Desktop$ tree ./test/
./test/
├── 2.txt
├── dash_akol_1080p_(Tele-Film.ir).mp4
├── dir1
│   └── 3.txt
├── nn
│   ├── CIA Kubark 1-60.pdf
│   └── Plain Text.txt
└── Project.sh

2 directories, 6 files
bahman@XubuntuMachine:~/Desktop$
```

### obviously you can use silly_encoder.sh for multi layer encryption (you should remember each layer password) and decrypting layer by layer (use each layer password).


## ⬇️ Installation 

First download the silly_encoder.sh 

```bash
pip install my-package
```

Then put it in /bin for excute evrywhre in yor system.
go to directory that you download silly_encoder.

```bash
sudo mv silly_encoder.sh /bin 
```

Give silly_encoder.sh exe 

```bash
sudo chmod +777 /bin/silly_encoder.sh
```

Now it is ready to use by just type silly_encoder.sh in your terminal to run.

```bash
silly_encoder.sh
```

**You need install openssl in your system if it's NOT installed. 
openssl is installed by default in debian base linux, but if it's not installed you can install it by this command.

```bash
sudo apt update
sudo apt install openssl
```

*If you want change the script use VI to edit it*
```bash
sudo vi /bin/silly_encoder.sh
```

## 💭 Feedback and Contributing

if you want contact me this is my email address : bahmannarimanian@gmail.com

