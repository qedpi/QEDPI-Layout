prefix = 'Appskey & '
infix = '::Send, '
postfix = '\nReturn\n'

    #'<#'  # Left Windows Key

preamble = ['#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.',
            '; #Warn  ; Enable warnings to assist with detecting common errors.',
            'SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.',
            'SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.']


a = ('α', '∀')
b = ('β', '∵')
c = ('⊂', '⊄')
d = ('δ', 'Δ')
e = ('ε', '∃')
f = ('λ', '∫')
g = ('', '')
h = ('²', '³')
i = ('ᵢ', '∈')
j = ('ⱼ', '∉')
k = ('ₖ', 'ℂ')
l = ('', '')
m = ('≠', '≡')
n = ('∩', '∅')
o = ('∞', 'Ω')
p = ('π', 'Π')
q = ('∎', 'ℚ')
r = ('√', 'ℝ')
s = ('∋', 'Σ')
t = ('θ', '∴')
u = ('∪', '⨆')
v = ('∧', '∨')
w = ('', '')        # free
x = ('ˣ', '⊥')
y = ('∠', 'ℤ')
z = ('ℕ', 'ℤ')
letters = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z]

special = ['-', '_', ',', '.', ';', ':', "'", '"', '/', '?', '\\', '|']
symbols = ['⇒', '⇔', '≤', '≥', ' ', ' ', '∂', '∇', '⌊', '⌈', '⌋', '⌉']


assoc = {}
used = {}

def check_free(c, s):
    """
    :return: Checks if another char already maps to s,
             if s is free, maps c to s
    """
    if s and s is not ' ':
        if s not in used:
            assoc[c] = s
            used[s] = c
            print(c, '->', s)
        else:
            print(c, '!', used[s], 'already maps to', s)
    else:
        print(c, 'is free')

for i in range(26):
    c = chr(i + ord('a'))
    C = c.upper()
    s, S = letters[i]
    check_free(c, s)
    check_free(C, S)
for i, c in enumerate(special):
    check_free(c, symbols[i])


print(assoc)

with open('math.ahk', 'wb') as file:

    for c, s in assoc.items():
        out = prefix + c + infix + s + postfix
        file.write(out.encode('utf8'))