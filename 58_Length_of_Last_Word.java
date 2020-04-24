class Solution {
    public int lengthOfLastWord(String s) {
        
        List<String> list = Arrays.asList(s.split(" "));
        
        if (list.size() == 0){
            return 0;
        }
        
        String lastWord = list.get(list.size()-1);
        
        return lastWord.length();
        
    }
}