module strings;
string str1,str2;
initial begin 
str1="lpu";
str2="LPU";
if(str1==str2)
$display("The strings are same");
else if(str1>str2)
$display("The string1 is greater than string2");
else
$display("The string1 is lesser than string2");

$display("length of string is %0d",str1.len()); //length of string
str2.putc(1,"O");
$display("Inseted O in index 1 is %s",str2);
str2.putc(1,"P");
$display("Returning ascii value of charter in the position is %s",str2.getc(2));
$display("upper case letters in %s",str2.toupper());
$display("lower case letters in %s",str1.tolower());
str1={str1,"144411"};
$display("%s",str1);
str2=$psprintf("%s%0d",str1,101);
$display("%s",str2);
end
endmodule
