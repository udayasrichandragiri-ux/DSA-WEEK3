#include <iostream>
#include <string>
using namespace std;

// ======================================================
// 1. BINARY SEARCH TREE
// ======================================================

class BST {
private:
    struct Node {
        int data;
        Node* left;
        Node* right;

        Node(int value) {
            data = value;
            left = nullptr;
            right = nullptr;
        }
    };

    Node* root;

    // Recursive insertion
    Node* insert(Node* node, int value) {
        if (node == nullptr) {
            return new Node(value);
        }

        if (value < node->data) {
            node->left = insert(node->left, value);
        }
        else if (value > node->data) {
            node->right = insert(node->right, value);
        }

        return node;
    }

    // Recursive search
    bool search(Node* node, int value) {
        if (node == nullptr) {
            return false;
        }

        if (node->data == value) {
            return true;
        }

        if (value < node->data) {
            return search(node->left, value);
        }

        return search(node->right, value);
    }

    // Recursive inorder
    void inorder(Node* node) {
        if (node != nullptr) {
            inorder(node->left);
            cout << node->data << " ";
            inorder(node->right);
        }
    }

    // Recursive preorder
    void preorder(Node* node) {
        if (node != nullptr) {
            cout << node->data << " ";
            preorder(node->left);
            preorder(node->right);
        }
    }

    // Recursive postorder
    void postorder(Node* node) {
        if (node != nullptr) {
            postorder(node->left);
            postorder(node->right);
            cout << node->data << " ";
        }
    }

public:
    BST() {
        root = nullptr;
    }

    void insert(int value) {
        root = insert(root, value);
    }

    bool search(int value) {
        return search(root, value);
    }

    void inorder() {
        inorder(root);
    }

    void preorder() {
        preorder(root);
    }

    void postorder() {
        postorder(root);
    }
};


// ======================================================
// 2. HASH MAP USING ARRAYS + LINEAR PROBING
// ======================================================

class HashMap {
private:
    static const int SIZE = 10;

    string keys[SIZE];
    string values[SIZE];
    bool occupied[SIZE];

    int hashFunction(string key) {
        int hash = 0;

        for (char ch : key) {
            hash += ch;
        }

        return hash % SIZE;
    }

public:
    HashMap() {
        for (int i = 0; i < SIZE; i++) {
            occupied[i] = false;
        }
    }

    // Insert using linear probing
    void insert(string key, string value) {
        int index = hashFunction(key);

        while (occupied[index]) {

            // Update existing key
            if (keys[index] == key) {
                values[index] = value;
                return;
            }

            // Linear probing
            index = (index + 1) % SIZE;
        }

        keys[index] = key;
        values[index] = value;
        occupied[index] = true;
    }

    // Search in hash table
    string get(string key) {
        int index = hashFunction(key);
        int start = index;

        while (occupied[index]) {

            if (keys[index] == key) {
                return values[index];
            }

            index = (index + 1) % SIZE;

            if (index == start) {
                break;
            }
        }

        return "Not Found";
    }

    // Display hash table
    void display() {
        cout << "\n===== HASH TABLE =====\n";

        for (int i = 0; i < SIZE; i++) {
            cout << i << " : ";

            if (occupied[i]) {
                cout << keys[i] << " -> "
                     << values[i];
            }
            else {
                cout << "Empty";
            }

            cout << endl;
        }
    }
};


// ======================================================
// MAIN FUNCTION
// ======================================================

int main() {

    // --------------------------------------------------
    // BINARY SEARCH TREE
    // --------------------------------------------------

    BST tree;

    tree.insert(50);
    tree.insert(30);
    tree.insert(70);
    tree.insert(20);
    tree.insert(40);
    tree.insert(60);
    tree.insert(80);

    cout << "===== BINARY SEARCH TREE =====\n";

    // Search
    int value = 40;

    if (tree.search(value)) {
        cout << value << " found in BST.\n";
    }
    else {
        cout << value << " not found in BST.\n";
    }

    // Traversals
    cout << "\nInorder: ";
    tree.inorder();

    cout << "\nPreorder: ";
    tree.preorder();

    cout << "\nPostorder: ";
    tree.postorder();

    cout << "\n";


    // --------------------------------------------------
    // HASH MAP
    // --------------------------------------------------

    HashMap map;

    map.insert("Name", "Udayasri");
    map.insert("Age", "21");
    map.insert("Course", "C++");
    map.insert("City", "Warangal");

    cout << "\n===== HASH MAP =====\n";

    cout << "Name: " << map.get("Name") << endl;
    cout << "Course: " << map.get("Course") << endl;

    // Display hash table
    map.display();

    return 0;
}