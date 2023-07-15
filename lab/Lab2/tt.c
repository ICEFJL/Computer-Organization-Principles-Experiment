int fun7(Tree* root, int x) {
    if (!root)  
        return -1;  
    if (root->val == x)    
        return 0;       
    else if (root->val < x)       
        return 2 * fun7(root -> right, x) + 1;
    else
        return 2 * fun7(root -> left, x); 
}
