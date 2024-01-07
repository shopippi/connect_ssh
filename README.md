# SSH Maestro: Supreme Master of the Public Key

## Background:

One of the problems before using this program is that it is very time consuming for beginners in networking and people who have never used a Linux-based OS to make an SSH connection.
Since it is very wasteful to take time for SSH connection, we created a program that can be a wizard for beginners.

Since the program is intended for use by beginners, it also specifies how to manage old keys, so it can meet minimum security requirements.

## Introduction:
SSH (Secure Shell) is a key protocol for secure communication over a network. However, its strong security means that proper public key management is a must. This is where "SSH Maestro" comes in: the ultimate tool for beginners in SSH connectivity to facilitate public key output and management.

### The depth of functionality:

    Public key solo-playing:
    SSH Maestro" creates the appropriate public key for each server with a single, concise command. This opens the door to secure and powerful communications.

    Behind-the-scenes directory creation for each server:
    A directory specific to each server is automatically created and public keys are managed in an orderly fashion. This frees you from confusion and allows for effective key organization.

    A grand burial of old keys:
    The "SSH Maestro" defies the passage of time and ensures that old keys are removed when they are no longer needed to maintain security. This prevents security from winding down.

### Simplicity of use:

    The magic command:
    Simply run gene-key.rb to generate the appropriate public key for the server in question (the server that manages each directory).

    Secret directory construction:
    For each server, a . /<server name> directory is automatically generated for each server, and the public and private keys are placed in an orderly fashion.

    Resist the Spirit of Time:
    Using the specification of the directory to be created, past keys are ruthlessly eliminated, ensuring a security victory.

### Program Overview

The generate_ssh_key method provides the primary functionality for generating SSH keys. It takes as arguments the path to a directory, the filename of the key, and the number of bits in the key.

    1. First, if the specified directory does not exist, FileUtils.mkdir_p is used to create it.

    2. Generate a new RSA key with OpenSSL::PKey::RSA.new and store it as a private key.

    3. The generated public key is stored in the form of a public key. The contents of the generated public key are also displayed.

    4. Finally, a note about the use of the key is displayed.

    5. The user is prompted to enter a directory, a file name for the key, and the number of bits in the key. If the user does not enter any information, the default values are used.

    6. The generate_ssh_key method is called to generate an SSH key in the specified directory.

    7. The script asks the user for the directory name, the key file name, and the number of bits in the key, while passing those values as arguments to the generate_ssh_key method.

    8. It also passes the values to the system(". /delete.sh #{directory}") to call the delete.sh script in the specified directory. This operation deletes some files in the directory.


### Conclusion:

SSH Maestro" is the one and only spellbinding tool to transform public key management into a sacred ritual and build a fortress of security. Even beginners will not hesitate to enter the SSH realm with aplomb.


### NOTES.

You must have shell script execution privileges to run this program.

``$ sudo chmod +x . /delete.sh``
You must do $ sudo chmod +x . No, you must cast a spell.

If you are a beginner-level wizard, please perform this operation as you are told.
Detailed usage

### When you run this program,
You will be asked for the name of the directory to save, the file name of the key, and the number of bits in the key.
Enter each of these, and you can generate the key.
![how to use](howto.png)


Furthermore, old keys are deleted as follows.


![how to use](howto2.png)
