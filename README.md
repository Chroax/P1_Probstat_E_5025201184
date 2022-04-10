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

### 2.B

### 2.C

## Soal 3
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal3.PNG)
### 3.A

### 3.B

### 3.C

### 3.D

## Soal 4
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal4.PNG)
### 4.A

### 4.B

### 4.C

## Soal 5
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal5.PNG)
### 5.A

### 5.B

### 5.C

## Soal 6
![alt text](https://github.com/Chroax/P1_Probstat_E_5025201184/blob/main/soal6.PNG)
