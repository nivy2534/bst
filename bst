class nodebst {
    char item;
    nodebst right, left;

    public nodebst(char item) {
        this.item = item;
        this.right = null;
        this.left = null;
    }
}

class bst {
    nodebst root;

    public boolean isEmpty() {
        return root == null;
    }

    public nodebst insert(nodebst root, char key) {
        if (root == null) {
            return new nodebst(key);
        }

        if (key < root.item) {
            root.left = insert(root.left, key);
        } else if (key > root.item) {
            root.right = insert(root.right, key);
        }

        return root;
    }

    public boolean search(nodebst root, char key) {
        if (root == null) {
            return false;
        } else if (root.item == key) {
            return true;
        }

        if (key < root.item) {
            return search(root.left, key);
        } else {
            return search(root.right, key);
        }

    }
}

public class binarysearchtree {
    public static void main(String[] args) {
        bst bst = new bst();
        bst.root = bst.insert(bst.root, 'A');
        bst.insert(bst.root, '1');
        // bst.insert(bst.root, 'B');
        String s = "Aku Suka Kamu";
        for (int i = 0; i < s.length(); i++) {
            if (i == 0) {
                bst.root = bst.insert(bst.root, s.charAt(i));
            } else {
                bst.insert(bst.root, s.charAt(i));
            }
        }
        for (int i = 0; i < s.length(); i++) {
            if (bst.search(bst.root, s.charAt(i))) {
                System.out.println("YES");
            } else {
                System.out.println("NO");
            }
        }
    }
}
