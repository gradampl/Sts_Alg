> #1.	Dla zmiennych losowych przedstawionych w tabelach obliczyć podstawowe statystyki 
> #     Wartość = 1, Prawdopodobieństwo = 1/6 (podobnie dla wartośći 2,3,4,5,6)
> 
> #2.	Wygeneruj próby dla n=100 dla następujących rozkładów: Bernoulliego, Dwumianowego, Poissona 
> library(Rlab)
Błąd w poleceniu 'library(Rlab)':nie ma pakietu o nazwie ‘Rlab’
> Probs <- rep(1/6, 6)
> items <- seq(1, 6, 1)
> it_mean = mean(items)
> it_median = median(items)
> it_std = sd(items)
> it_var = var(items)
> n = 100
> p = 0.2
> k = 5
> ber <- rbern(n,p)
Błąd w poleceniu 'rbern(n, p)':nie udało się znaleźć funkcji 'rbern'
> ber <- rber(n,p)
Błąd w poleceniu 'rber(n, p)':nie udało się znaleźć funkcji 'rber'
> library(Rlab)
Błąd w poleceniu 'library(Rlab)':nie ma pakietu o nazwie ‘Rlab’
> install.packages("Rlab")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Adam/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
próbowanie adresu URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/Rlab_2.15.1.zip'
Content type 'application/zip' length 347255 bytes (339 KB)
downloaded 339 KB

package ‘Rlab’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Adam\AppData\Local\Temp\RtmpKIlQ6d\downloaded_packages
> library(Rlab)
Rlab 2.15.1 attached.


Dołączanie pakietu: ‘Rlab’

Następujące obiekty zostały zakryte z ‘package:stats’:

    dexp, dgamma, dweibull, pexp, pgamma, pweibull, qexp, qgamma, qweibull, rexp, rgamma, rweibull

Następujący obiekt został zakryty z ‘package:datasets’:

    precip

> ber <- rbern(n,p)
> bin <- rbinom(n,k,p)
> poi <- rpois(n,p)
> 
> # 3.	Policz dla nich statystyki podstawowe (średnią, wariancję, kurtozę i skośność). 
> 
> mean(ber)
[1] 0.23
> median(ber)
[1] 0
> var(ber)
[1] 0.1788889
> skew(ber)
[1] 1.283171
> kurt(ber)
[1] 2.646527
> 
> 
> mean(bin)
[1] 0.92
> median(bin)
[1] 1
> var(bin)
[1] 0.599596
> skew(bin)
[1] 0.6624718
> kurt(bin)
[1] 3.275383
> 
> 
> mean(poi)
[1] 0.26
> median(poi)
[1] 0
> var(poi)
[1] 0.2145455
> skew(poi)
[1] 1.397018
> kurt(poi)
[1] 3.703055
> 
> 
> # 4.Dla rozkładów Dwumianowego, Poissona narysuj wykresy rozkładu prawdopodobieństwa (dobierz dowolnie parametry)
> 
> hist(bin)
> hist(poi)
> 
> 
> # 5.	Dla rozkładów Poissona i Dwumianowego wygeneruj rozkład prawdopodobieństwa dla n = 20, k = 0, …, 20 oraz p = 0.4. #Sprawdź, czy suma prawdopodobieństw wygenerowana dla tych rozkładów jest równa 1
> 
> poi <- rpois(20,0.4)
> P <- ecdf(poi)
> plot(P)
> 
> bin <- rbinom(20,20,0.4)
> P <- ecdf(bin)
> plot(P)
> 
> 
> # 6.	Wygeneruj 30 danych dla rozkładu normalnego o średniej równej 0 i odchyleniu standardowym równym 2. Wyznacz statystyki podstawowe – czy są one równe z wartościami teoretycznymi? Sprawdź, czy zwiększenie liczby danych zwiększy dokładność wyliczeń statystyk opisowych. 
> 
> norm <- rnorm(10, 0, 2)
> norm
 [1] -1.0128677 -0.8912117  1.2523880 -0.2495768  1.8834332 -0.3241169  0.9447989  0.5889541 -4.0469052 -0.0990004
> print('mean - 0')
[1] "mean - 0"
> mean(norm)
[1] -0.1954105
> print('median - 0')
[1] "median - 0"
> median(norm)
[1] -0.1742886
> print('variance - 4') var(norm)
BŁĄD: nieoczekiwany symbol in "print('variance - 4') var"
> print('variance - 4')
[1] "variance - 4"
> var(norm)
[1] 2.705355
> print('skewness - 0')
[1] "skewness - 0"
> skew(norm)
[1] -1.159013
> print('kurtosis - 0')
[1] "kurtosis - 0"
> kurt(norm)
[1] 4.147324
> 
> 
> norm <- rnorm(100, 0, 2)
> 
> print('mean - 0')
[1] "mean - 0"
> mean(norm)
[1] 0.07480349
> print('median - 0')
[1] "median - 0"
> median(norm)
[1] 0.09660881
> print('variance - 4')
[1] "variance - 4"
> var(norm)
[1] 4.825696
> print('kurtosis - 0')
[1] "kurtosis - 0"
> kurt(norm)
[1] 3.351857
> print('skewness - 0')
[1] "skewness - 0"
> skew(norm)
[1] -0.3885361
> 
> 
> norm <- rnorm(1000, 0, 2)
> 
> print('mean - 0')
[1] "mean - 0"
> mean(norm)
[1] 0.06857219
> print('median - 0')
[1] "median - 0"
> median(norm)
[1] 0.1334143
> print('variance - 4')
[1] "variance - 4"
> var(norm)
[1] 3.977514
> print('skewness - 0')
[1] "skewness - 0"
> skew(norm)
[1] -0.2148435
> print('kurtosis - 0')
[1] "kurtosis - 0"
> kurt(norm)
[1] 3.049271
> 
> 
> # 7.	Narysować histogram dla rozkładu normalnego o parametrach: średnia = 1, odchylenie =2, wykres dla rozkładu standardowego, oraz wykres gęstości dla średniej równej -1 oraz odchylenia równego 0.5. 
> 
> norm1 <- rnorm(1000, 1, 2)
> norm2 <- rnorm(1000, 0, 1)
> norm3 <- rnorm(1000, -1, 0.5)
> 
> hist(norm1)
> hist(norm2)
> hist(norm3)
> 