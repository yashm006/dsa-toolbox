#include <iostream>
#include <bits/stdc++.h>
#include <vector>
#include <algorithm>

using namespace std;

// ==== Definition of classes ====
struct ListNode {
     int val;
     ListNode *next;
     ListNode() : val(0), next(nullptr) {}
     ListNode(int x) : val(x), next(nullptr) {}
     ListNode(int x, ListNode *next) : val(x), next(next) {}
};

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
// ===============================================================================================

// ==== Useful functions ====
int gcd(int a, int b) {
    int a_min = min(a,b);
    int b_max = max(a,b);

    if (a_min == 0) return b_max;

    else {
        return gcd(a_min, b_max%a_min);
    }
}

void swap(int i, int j, vector<int> &v) {
    int temp = v[i];
    v[i] = v[j];
    v[j] = temp;
}




int main() {

    cout << gcd(20, 12);

    return 0;
}

