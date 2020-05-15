class Solution {
    public void reverseString(char[] s) {
        
        int index = s.length -1;
        
        for (int i = 0 ; i < s.length / 2 ; i++) {
            char txt = s[index];
            s[index] = s[i];
            s[i] = txt;
            
            index--;
        }
    }
}