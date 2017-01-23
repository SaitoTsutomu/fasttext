import pickle, sys
def main():
    if len(sys.argv) == 1:
        print('usage: python %s +フランス +東京 -日本'%sys.argv[0])
        return
    with open('model.bin', 'rb') as fp:
        m = pickle.load(fp)
    lp, lm = [], []
    for s in sys.argv[1:]:
        t = s.lstrip('+')
        if t.startswith('-'):
            lm.append(t[1:])
        else:
            lp.append(t)
    for s, d in m.most_similar(positive=lp, negative=lm):
        print('%.4f %s'%(d,s))
main()
