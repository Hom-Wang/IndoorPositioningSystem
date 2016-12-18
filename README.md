# IndoorPositioningSystem  
採用定位技術為超寬頻（Ultra-Wideband），超寬頻是一種具高傳輸速率與低耗能的無線通訊技術，過去主要用於軍事雷達方面。超寬頻技術與常見的無線電通訊、傳遞訊息方法不同，一般常見的無線電通訊都是屬於載波技術，藉由調整載波的振幅、頻率以及相位來攜帶訊息，而超寬頻則屬於無載波通信技術，透過連續的極短脈衝（ps~ns）編碼傳遞訊息，對於環境的抗干擾性較強、穿透性較佳，甚至也因為脈衝極短，不易被捕獲，通訊上的全性也較高。  

目前設計了兩種應用於室內定位的開發板，分別為 [UWB Node](https://github.com/KitSprout/UWB-Node) 和 [UWB Adapter](https://github.com/KitSprout/UWB-Adapter)，這邊主要紀錄一些定位的實驗數據與模擬程式，實際的開發板設計與相關韌體，請至對應的開發板下載。  

# UWB Node [![GitHub version](https://img.shields.io/badge/version-v1.2-brightgreen.svg)](https://github.com/KitSprout/UWB-Node)  
UWB Node 是一款 UWB 室內定位開發模組，採用 STM32F411CE 芯片以及 DWM1000 模組，板上有九軸慣性感測器、氣壓計，並規劃電池電壓檢測功能，預留部分擴充腳位，藉以連接藍牙、WIFI 模組以及 OLED 螢幕。

# UWB Adapter [![GitHub version](https://img.shields.io/badge/version-v1.4-brightgreen.svg)](https://github.com/KitSprout/UWB-Adapter)  
UWB Adapter 是一款主要是以電腦開發為主的 UWB 室內定位模組，算是一個簡化版的 KDWM1000，將感測器去掉，並結合具 VCP 功能的 JLINK 燒錄器，隨身碟的外型，只需要插入 USB 孔，就可以燒錄程式，透過 UART 與控制器通訊。

# Experiment  
- UWB Adapter 一對一測距實驗
