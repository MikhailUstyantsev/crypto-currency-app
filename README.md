# crypto-currency-app

Данный проект представляет из себя криптовалютное приложение, которое загружает данные о ценах в реальном времени из API (в качестве бекэнда используется CoinGecko API: https://www.coingecko.com/en/api)
и использует полученные данные для сохранения портфолио текущего пользователя. Использован архитектурный шаблон MVVM.

Возможности приложения:
- Живые данные о криптовалюте
- Сохранение портфолио текущего пользователя
- Поиск, фильтрация, сортировка и перезагрузка данных
- Пользовательская цветовая тема и анимация загрузки


Технические особенности:
- Архитектура MVVM
- Core Data (сохранение портфолио текущего пользователя)
- FileManager (сохранение изображений)
- фреймворк для реактивного программирования Combine
- Множественные запросы API
- Codable (декодирование данных JSON)
- 100% интерфейс SwiftUI
- Многопоточность (с использованием фоновых потоков)

______________________________


This project is a cryptocurrency application that downloads real-time price data from the API (CoinGecko API is used as a backend: https://www.coingecko.com/en/api)
and uses the received data to save the portfolio of the current user. The architectural pattern is MVVM + Combine.

App features:
- Live cryptocurrency data
- Saving current user's portfolio
- Searching, Filtering, Sorting, and Reloading data
- Custom color theme and loading animations

Technical features:
- MVVM Architecture
- Core Data (saving current user's portfolio)
- FileManager (saving images)
- Combine (publishers and subscribers)
- Multiple API calls
- Codable (decoding JSON data)
- 100% SwiftUI interface
- Multi-threading (using background threads)


<div align="center">
  <img src="https://github.com/MikhailUstyantsev/crypto-currency-app/assets/99423990/26a89e69-58a1-41e4-b050-e1383df27cb5" width="250"/>
</div>

<p align="center">
  <mark>Основной список</mark>
</p>


<div align="center">
  <img src="https://github.com/MikhailUstyantsev/crypto-currency-app/assets/99423990/05766571-c23c-4647-8b62-a2cff32348af" width="250"/>
</div>

<p align="center">
 <mark>Портфолио пользователя</mark>
</p>


<div align="center">
  <img src="https://github.com/MikhailUstyantsev/crypto-currency-app/assets/99423990/6daefb85-6899-4778-9543-9d7e71c044ca" width="250"/>
</div>

<p align="center">
  <mark>Экран редактирования портфолио</mark>
</p>








