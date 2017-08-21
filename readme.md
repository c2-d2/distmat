# Disty McMatrixface

Compute a distance matrix from a core genome alignment file.


## Prerequisities

* GCC 4.8+ or equivalent
* ZLib


## Getting started

```bash
git clone https://github.com/c2-d2/disty
cd disty && make
./disty tests/test2.fa
```

**Installation:** ``make install``


## Command line parameters

```
Usage:   disty <alignment.fa>

Options:
  -n  FLOAT  skip columns having frequency of N > FLOAT [1.00]
  -i  INT    input format [0]
                 0: ACGT
                 1: 01
  -s  INT    strategy to deal with N's [0]
                 0: ignore pairwisely
                 1: ignore pairwisely and normalize
                 2: ignore globally
                 3: replace by the major allele
                 4: replace by the closest individual (not implemented yet)
  -h         print help message and exit
  -v         print version and exit
```


## Author

[Karel Brinda](http://brinda.cz) (kbrinda@hsph.harvard.edu)

