## Github: Получение Personal Access Token

Для работы с локальным репозиторием github на своем компьютере необходимо знать:
1. Имя пользователя. Это почтовый адрес
2. Пароль. Но это не тот же самый пароль, что используется для входа на сайт. Это Personal Access Token.

Для получения Personal Access Token необходимо:
1. Зайти на сайт github.com
2. Нажать на иконку пользователя в верхнем правом углу. <br/>
<img src="images/token/01_press_user_icon.png" alt="User" width="100"/>
3. Должно появиться следующее меню. В нем нужно нажать Settings <br/>
<img src="images/token/02_press_settings.png" alt="Settings" width="200"/>
4. Должно появиться следующее меню. В нем нужно нажать Developer settings <br/>
<img src="images/token/03_press_developer_settings.png" alt="Developer settings" width="400"/>
5. Появится следующее меню. В нем нужно нажать Personal access tokens
<img src="images/token/04_press_tokens.png" alt="Personal acess tokens" width="400"/>
6. Далее нужно нажать на Generate new token
<img src="images/token/05_press_generate_new_token.png" alt="Generate new token" width="600"/>
7. Появится раздел для создания нового токена
<img src="images/token/06_new_token_creation.png" alt="New token creation" width="600"/>
8. В это разделе необходимо заполнить следующие поля
* Название токена Note: development (можно любое название)
* Время, когда токен устареет. Expiration: No expiration
* Права доступа для токена. Отметить repo. Других пунктов можно не отмечать.
9. Далее нужно опуститься вниз страницы и на нажать на зеленую кнопку Generate token
<img src="images/token/07_press_generate_token_button.png" alt="Press generate token" width="500"/>
10. Github.com сгенерирует новый токен. Его нужно сохранить для последующей работы в Git
<img src="images/token/08_save_new_token.png" alt="New token creation" width="500"/>
