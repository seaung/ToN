record = ('seaung', 'seaung@123.com', '0755-88888', '0711-6666')
records = [('foo', 1, 2), ('bar', 'hello'), ('foo', 3, 4)]
lines = "username:*:-2:-2:unprivileged:/var/empty:/usr/bin/false"
record2 = ('username', 23, 34, (12, 23, 34))

names, *_, (*_, day) = record2
name, email, *phone_number = record
username, *fields, dirs, sh = lines.split(':')
def do_foo(x, y):
    print('foo => ', x, y)

def do_bar(s):
    print('bar => ', s)

for tag, *args in records:
    if tag == 'foo':
        do_foo(*args)
    elif tag == 'bar':
        do_bar(*args)

print('name => ', name)
print('email => ', email)
print('phone => ', phone_number)
print('username => ', username)
print('dirs -> ', dirs)
print('names => ', names)

