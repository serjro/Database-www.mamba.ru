**_БД сайта mamba.ru на 150.000 реальных профайлов пользователей._**

1. Описание БД социальной сети:

База данных является неотьемлимой и самой важной частью онлайн-платформы, которая используется для общения, знакомств, создания социальных отношений между людьми, которые имеют схожие интересы или офлайн-связи, а также для развлечения. 

В социальной сети можно искать нужную информацию и единомышленников, оказывать себе и помощь в профессиональной деятельности, разместить рекламу и т.д. Также имеется много дополнительных развлечений, такие как – видео, музыка, игры. Мы можем слушать и смотреть их, либо загружать свое творчество.

2. Структура базы:

- Таблицы профилей пользователей. 

prfiles - основная таблица хранения анкет пользователей. Набор самой важной по совокупности информации(идентификатора, фото, страны, города, возраста и т.д)

profiles_ext - Расширенная таблица анкет (extended). Самая большая таблица по совокупности данных.

profiles_whom - Таблица профилей с кем знакомлюсь

profiles_how - Таблица профилей как знакомлюсь

profiles_goals - Таблица целей знакомства

profiles_inbody - Таблица профилей что может быть на теле

profiles_bhair - Таблица профилей наличия волос на теле

profiles_lang - Таблица профилей знания иностранных языков

profiles_lifegoals - Таблица профилей жизненных целей

profiles_excites - Таблица профилей что возбуждает

profiles_desired_age - Таблица профилей желаемого возраста

profiles_findtext - Текст анкеты Кого я хочу найти

profiles_about - Раздел О себе

- Таблицы описаний(description), списков и словарей. Служат для предотвращения дублирования информации в БД, сокращения ее обьемов.   

descr_whom - Список с кем знакомлюсь

descr_how - Список как знакомлюсь

descr_family - Список семейного положения

descr_goals - Список целей знакомства

descr_sponsor - Список отношения к спонсорству

descr_kids - Список есть ли дети

descr_body - Список телосложений

descr_inbody - Список что может быть на теле

descr_hair - Список цветов волос(прически)

descr_bhair - Список возможных волос на теле

descr_smoking - Список отношения к курению

descr_drinking - Список отношения к алкоголю

descr_drugs - Список отношения к наркотикам

descr_profit - Список вариантов дохода

descr_flat - Список вариантов жилья

descr_lifestyle - Список образа жизни

descr_lifegoals - Список жизненных целей

descr_religion - Варианты религий

descr_appearance - Список внешностей

descr_orientation - Список ориентации

descr_breast - Список размера груди

descr_excites - Список что возбуждает

descr_hiv - Список вич

descr_relation - Список отношений

descr_sexexp - Список сексуальных отношений

descr_sexoften - Список частоты занятий сексом

descr_desired_age - Список желаемого возраста

descr_country - Список стран

descr_cities - Список городов

descr_zodiac - Список знаков зодиака

- Прочие таблицы текстово/числовых значений используемые для хранения дополнительной информации о пользователях и их активности.

communities - Таблица групп

communities_users - Участники групп, связь между пользователями и группами.

friendship - Таблица дружбы

friendship_statuses - Статусы дружбы

messages - Сообщения

- Таблицы учетных данных

users - Таблица пользователей

accounts - Таблица аккаунтов(логин/пароль)

- Таблицы ресурсов

media - Медиафайлы

media_type - Типы медиафайлов

photo - Фото
