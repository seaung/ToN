import html

def avg(first, *rest):
    return (first + sum(rest) / (1 + len(rest)))


def make_element(name, value, **attrs):
    keyvalues = ['%s="%s"' % item for item in attrs.items()]
    attr_str = ''.join(keyvalues)
    element = '<{name}{attrs}>{value}</name>'.format(name=name, attrs=attr_str, value=html.escape(value))
    return element


if __name__ == '__main__':
    avg = avg(1, 2)

    make = make_element('item', 'Albatross', size='large', quantity=6)
    
    print(avg)
    print(make)

