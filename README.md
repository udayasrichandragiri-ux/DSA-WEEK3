# 🌳 Data Structures – Trees & Hashing

This repository contains implementations and assignments based on **Data Structures**, focusing on **Binary Search Trees, Tree Traversals, Hashing, Hash Tables, and Collision Handling** using C++.

## 📚 Topics Covered

* 🌳 Binary Tree & Binary Search Tree (BST)
* 🔄 Tree Traversals

  * Inorder
  * Preorder
  * Postorder
* #️⃣ Hashing & Hash Tables
* ⚡ HashMap implementation using arrays
* 🔧 Collision Handling
* ➡️ Linear Probing

## 📝 Assignments

### 1. Binary Search Tree

* Build a Binary Search Tree.
* Insert elements into the BST.
* Search for a given value.
* Implement BST operations using C++.

### 2. Tree Traversals

Implement recursive functions for:

* **Inorder Traversal** – Left → Root → Right
* **Preorder Traversal** – Root → Left → Right
* **Postorder Traversal** – Left → Right → Root

### 3. HashMap Using Arrays

* Implement a basic HashMap using arrays.
* Store key-value pairs.
* Perform insertion and searching operations.
* Understand the working of hash functions.

### 4. Hash Table with Linear Probing

* Implement a hash table.
* Handle collisions using **linear probing**.
* Display the contents of the hash table.
* Search for elements in the hash table.

## 🚀 Mini Project – Contact Directory

### 📞 Contact Directory Using BST

A simple **Contact Directory** implemented using a Binary Search Tree.

### Features

* ➕ Insert a new contact
* 🔍 Search for a contact
* 🗑️ Delete a contact
* 📋 Display all contacts
* 🔤 Display contacts alphabetically using **Inorder Traversal**

### How It Works

Contacts are stored in a Binary Search Tree based on their names.

For example:

```text
             Rahul
            /     \
       Anjali      Suresh
          \          \
          Priya       Vikram
```

Using **Inorder Traversal**, the contacts are displayed in alphabetical order:

```text
Anjali
Priya
Rahul
Suresh
Vikram
```

## 🛠️ Technologies Used

* **Language:** C++
* **IDE:** Visual Studio Code
* **Compiler:** GCC / MinGW / MSYS2 UCRT64
* **Version Control:** Git & GitHub

## 📂 Project Structure

```text
Data-Structures/
│
├── BinarySearchTree.cpp
├── TreeTraversal.cpp
├── HashMap.cpp
├── LinearProbing.cpp
├── ContactDirectory.cpp
└── README.md
```

> File names may be different depending on how the programs are organized in the repository.

## ▶️ How to Run

### Using VS Code with MSYS2 UCRT64

Compile a C++ program:

```bash
g++ BinarySearchTree.cpp -o BinarySearchTree
```

Run the program:

```bash
./BinarySearchTree
```

For another program:

```bash
g++ ContactDirectory.cpp -o ContactDirectory
./ContactDirectory
```

## 🎯 Learning Objectives

Through these assignments and the mini project, this repository demonstrates:

* Understanding of tree-based data structures
* Implementation of Binary Search Trees
* Recursive tree traversal techniques
* Understanding of hashing
* Implementation of hash tables
* Collision resolution using linear probing
* Practical application of BST using a Contact Directory

## 👩‍💻 Author

**Udayasri Chandragiri**

This repository was created as part of learning and practicing **Data Structures and Algorithms in C++**.
