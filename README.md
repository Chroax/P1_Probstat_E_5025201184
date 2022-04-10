# P1_Probstat_E_5025201184
Pengerjaan Praktikum - 1 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Cahyadi Surya Nugraha     | 5025201184 |

## Soal 1
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal1.PNG)
### 1.A
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
 - Berapa peluang penyurvei bertemu nA = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika probabilitas = 0.20 dari populasi menghadiri acara vaksinasi?
    Penyelesaian dilakukan dengan menggunakan distribusi geometrik dengan bantuan fungsi dgeom(). Dari fungsi tersebut, didapatkan hasil sebagai berikut, yaitu peluang sebesar 0.1024.
    ```R
    # 1.A
    probabilitas = 0.2
    nA = 3
    peluang = dgeom(nA, probabilitas)
    ```    
### 1.B
 - Mean distribusi Geometrik dengan 10000 data random, probabilitas = 0,20 dimana distribusi geometrik acak tersebut nA = 3 (distribusi Geometrik acak () == 3)!

    Penyelesaian dilakukan dengan menggunakan rumus rerata dengan parameter berupa angka acak dari distribusi Geometri yang telah dilakukan dengan bantuan fungsi rgeom(). Dari rerata fungsi tersebut, didapatkan hasil yang cenderung berubah-ubah. Salah satu hasilnya adalah sebagai berikut, yaitu rerata sebesar 0.1028. Fungsi rgeom() tersebut berisi banyaknya data acak orang dan peluang kehadiran orang dalam menghadiri acara vaksinasi.
    ```R
    # 1.B
    mean = mean(rgeom(n = 10000, prob = probabilitas) == 3)
    ```
### 1.C
 - Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?
Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.

### 1.D
 - Histogram distribusi Geometrik, dengan peluang X = 3 gagal sebelum sukses pertama
Untuk membuat histogram distribusi Geometrik, digunakan fungsi hist() dengan parameter fungsi distribusi Geometrik seperti yang telah dilakukan pada poin-poin sebelumnya.
    ```R
    # 1.D
    x = 0:10
    data.frame(x, prob = dgeom(x, probabilitas)) %>%
    mutate(Failures = ifelse(x == 3, 3, "Data lain")) %>%
    ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
    geom_col() + 
    geom_text(
      aes(label = round(prob, 2), y = prob + 0.01),
      position = position_dodge(0.9),
      size = 3,
      vjust = 0
      )
    labs(title = "Probabilitas X = 3 kegagalan sebelum kesuksesan pertama",
       y = "Probability")
    ```
    
### 1.E
 - Nilai rataan (μ) dan varian (σ²) dari distribusi Geometrik.
Untuk mendapatkan nilai rataan menggunakan formula banyak data dikali dengan peluang kejadian.
    ```R
    # 1.E
    varian = (1-probabilitas)/probabilitas^2
    rataan = 1/probabilitas
    ```
    
## Soal 2
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal2.PNG)
### 2.A
 - Peluang terdapat 4 pasien yang sembuh.
    Penyelesaian dilakukan dengan menggunakan distribusi binomial dengan bantuan fungsi dbinom(). Dari fungsi tersebut, didapatkan hasil sebagai berikut, yaitu peluang sebesar 0.218199401946101.
    ```R
   # 2.A
   probabilitas = 0.2
   nS = 20
   nA = 4
   peluang = dbinom(nA, nS, probabilitas)
    ```    
### 2.B
 - Gambarkan grafik histogram berdasarkan kasus tersebut.
     Berikut Fungsi untuk membuat grafik histogram dengan menggunakan hist().
   ```R
   # 2.B
   x = rbinom(nA, nS, probabilitas)
   hist(x, main = "Binomial Distribution (nS = 20, p = 0.2)", xlab = "Success", ylab = "Probability")
   ``` 
### 2.C
 - Nilai rataan (μ) dan varian (σ²) dari Distribusi Binomial.
Untuk mendapatkan nilai rataan menggunakan formula banyak data dikali dengan peluang kejadian. Untuk mendapatkan nilai varian menggunakan formula nilai rataan dan dikali dengan komplemen dari peluang kejadian.
    ```R
    # 2.C
    rataan = nS * probabilitas
    varian = nS * probabilitas * (1 - probabilitas)
    ``` 
    
## Soal 3
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal3.PNG)
### 3.A
    ```R
    # 3.A
    lamda = 4.5
    nA = 6
    peluang = dpois(nA, lamda)
    ``` 
### 3.B
    ```R
    # 3.B
    set.seed(2)

    poisson_data  <- data.frame('data' = rpois(365, lamda))

    poisson_data  %>% ggplot() +
    geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == nA),
                     binwidth = 1,
                     color = 'black',) +
    scale_x_continuous(breaks = 0:10) + 
    labs(x = 'Number born per period',
         y = 'Proportion',
         title = '365 simulated births with Poisson Distribution (lambda = 4.5)') +
    theme_bw()
    ``` 
### 3.C

### 3.D
    ```R
    # 3.D
    rataan = varian = lamda
    ``` 
## Soal 4
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal4.PNG)
### 4.A
    ```R
    # 4.A
    x = 2
    df = 10
    density = dchisq(x, df, ncp = 0, log = FALSE)
    ``` 
### 4.B
    ```R
    # 4.B
    x <- rchisq(100, df)
    hist(x, freq = FALSE, xlim = c(0,31), ylim = c(0,0.2), main="Chisquare Distribution")

    curve(dchisq(x, df), from = 0, to = 30, n = 100, col = "blue", lwd = 2, add = TRUE)
    ``` 
### 4.C
    ```R
    # 4.C
    rataan = df
    varian = df * 2
    ``` 
## Soal 5
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal5.PNG)
### 5.A
    ```R
    # A.A
    x = 3
    exp = dexp(x, rate = 1, log = FALSE)
    ``` 
### 5.B
    ```R
    # 5.B
    par(mfrow = c(2,2))
    set.seed(1)
    hist(rexp(10, x), main = "Exponential Distribution")
    hist(rexp(100,x), main = "Exponential Distribution")
    hist(rexp(1000, x), main = "Exponential Distribution")
    hist(rexp(10000,x), main = "Exponential Distribution")
    ``` 
### 5.C
    ```R
    # 5.A
    simnum <- 100
    n = 100
    simdata <- matrix(rexp(simnum * n, x), simnum)
    sim_rowmean <- apply(simdata, 1, mean)
    sim_var <- var(sim_rowmean)
    ``` 
## Soal 6
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal6.PNG)
