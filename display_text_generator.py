sentence= "hello"

mapping = {}
for i in range(1, 11):
    mapping[i-1]=hex(i)
letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
for i in range(11,37):
    mapping[letters[i-11]]=hex(i)
output = []
for letter in sentence:
    output.append(mapping[letter])
print(output)