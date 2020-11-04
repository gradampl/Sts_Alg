import numpy as np
import scipy.stats as sc
import statistics as st
import pandas as pd
import matplotlib.pyplot as plt

dane = np.loadtxt('Wzrost.csv', delimiter=',',skiprows=0)
print(dane)
print('maksymalny wzrost - funkcja numpy = ', np.max(dane))
print('maksymalny wzrost = ', dane.max())
print('mediana wzrostu - funkcja numpy = ', np.median(dane))

# funkcje numpy: median, mean, std, min, max

print('odchylenie standardowe - funkcja statistics = ', st.stdev(dane))
print('odchylenie standardowe dla całej populacji- funkcja statistics = ', st.pstdev(dane))

# funkcje statistics: median_high(), median_low(), pstdev(), stdev(), pvariance(),
# variance(), mode

# funkcje scipy.stats: kurtosis(), skewness(), describe()

dane2 = np.loadtxt('MDR_RR_TB_burden_estimates_2020-10-29.csv', delimiter=',',skiprows=0)
print(dane2)

dane3 = pd.read_csv('MDR_RR_TB_burden_estimates_2020-10-29.csv')
print(dane3.head())
print(dane3.iloc[:,9])
do_obrobki = dane3.iloc[:,9]

print('maksymalna wartość do_obrobki - funkcja numpy = ', np.max(do_obrobki))
print('maksymalna wartość do_obrobki = ', do_obrobki.max())
print('średnia do_obrobki - funkcja numpy = ', np.mean(do_obrobki))
print('mediana do_obrobki - funkcja numpy = ', np.median(do_obrobki))
print('odchylenie standardowe do_obrobki - funkcja statistics = ', st.stdev(do_obrobki))
print('odchylenie standardowe dla całej populacji do_obrobki - funkcja statistics = ', st.pstdev(do_obrobki))
print('wariancja do_obrobki - funkcja statistics = ', st.variance(do_obrobki))
('wariancja dla całej populacji do_obrobki - funkcja statistics = ', st.pvariance(do_obrobki))
print('mediana gorna do_obrobki - funkcja statistics = ', st.median_high(do_obrobki))
print('mediana dolna do_obrobki - funkcja statistics = ', st.median_low(do_obrobki))
print('dominanta do_obrobki - funkcja statistics = ', st.mode(do_obrobki))

print('kurtoza do_obrobki - funkcja scipy = ', sc.kurtosis(do_obrobki))
print('skośność do_obrobki - funkcja scipy = ', sc.skew(do_obrobki))
print('wszystko (describe) do_obrobki - funkcja scipy = \n\n', sc.describe(do_obrobki))

dane4 = pd.read_csv('brain_size.csv', delimiter=';')
print(dane4.head())
print(dane4.iloc[:,4])
all_viq = dane4.iloc[:,4]
print('średnia all_viq - funkcja numpy = ', np.mean(all_viq))
gender = dane4.Gender.value_counts()
print(gender)

plt.hist(all_viq, bins = 10)
plt.show()

all_piq = dane4.iloc[:,5]
plt.hist(all_piq, bins = 10)
plt.show()

all_fsiq = dane4.iloc[:,3]
plt.hist(all_fsiq, bins = 10)
plt.show()

women = dane4[dane4['Gender']=='Female']

women_viq = women.iloc[:,4]
plt.hist(women_viq , bins = 10)
plt.show()

women_piq = women.iloc[:,5]
plt.hist(women_piq , bins = 10)
plt.show()

women_fsiq = women.iloc[:,3]
plt.hist(women_fsiq , bins = 10)
plt.show()