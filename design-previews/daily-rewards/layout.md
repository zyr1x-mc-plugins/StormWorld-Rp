# StormWorld — ежедневные награды

Оригиналы прочитаны из stormworld-rp.zip. Действующие ресурсы не изменены.
PNG 256×256, масштаб 1:1. Увеличение 4× NEAREST. Рамка, SW, табличка и нижний инвентарь точно скопированы из reallyworld/textures/gui/gui_bg.png. free_rewards.png изучен как пример композиции. Карточки 33×106: x=41,76,111,146,181; y=47. Палитра: угольные внутренние панели, трёхступенчатые цветные рамки, однопиксельные блики. Текст нарисован растровым шрифтом без сглаживания.

## Состояния
main-menu.png — демонстрационная сборка 1/2 получено, 3 доступно, 5/7 закрыто. Для реализации используйте main-background.png и отдельные cards/ либо states/ (15 вариантов); не используйте демонстрационную сборку как неизменяемый фон для всех игроков.

## Сетка и ввод
Система координат PNG: левый верхний угол (0,0). Планируется сундук Bukkit на 54 слота. Начало содержимого ItemStack (47,57), шаг 18. Это соответствует стандартному chest origin (39,39), где первый предмет смещён на (8,18). Фон нужно позиционировать относительно этого origin. Рулетка: row=1, slots 9–17; предметы x=47+18c,y=75, размер 16×16. Результат slot 13. Превью row=3, slots 27–35, y=111. Крутить: slots 48–50; назад 45–46; статус 52–53. Кнопки не содержат предметов.

Главное меню: прозрачные кликабельные ItemStack в колонках [0,1], [2,3], [4], [5,6], [7,8] всех шести строк; соответствуют дням 1,2,3,5,7. Визуальная граница карточек не совпадает с границами слотов: клики обрабатываются по указанным группам, включая зазоры. Это ограничение стандартного инвентаря, не произвольные pixel hitboxes.

В существующем minecraft/font/default.json bitmap GUI использует height=256, ascent=40; free_rewards имеет U+E700, отрицательный пробел U+E701=-48. Новые glyph ID не назначены, JSON пака не изменён. Для нового GUI необходимо отдельное назначение свободных глифов и проверка фактического смещения заголовка в клиенте. Рендер в Minecraft не тестировался; привязка выше — точный контракт будущей интеграции, а не утверждение о текущем плагине.

## Найденные GUI текстуры (размеры прочитаны программно)
- `reallyworld\textures\gui\codes.png`: 256×256
- `reallyworld\textures\gui\free_rewards.png`: 256×256
- `reallyworld\textures\gui\gui_bg.png`: 256×256
- `reallyworld\textures\gui\gui_bg_2.png`: 256×256
- `reallyworld\textures\gui\gui_decoration.png`: 256×256
- `reallyworld\textures\gui\logotype.png`: 256×256
- `reallyworld\textures\gui\privileges.png`: 256×16
- `reallyworld\textures\gui\rewards_playtime.png`: 256×256
- `reallyworld\textures\gui\reward_contents.png`: 256×256
- `reallyworld\textures\gui\content\content_00.png`: 256×256
- `reallyworld\textures\gui\content\content_01.png`: 256×256
- `reallyworld\textures\gui\content\content_02.png`: 256×256
- `reallyworld\textures\gui\content\content_03.png`: 256×256
- `reallyworld\textures\gui\content\content_04.png`: 256×256
- `reallyworld\textures\gui\content\content_05.png`: 256×256
- `reallyworld\textures\gui\content\content_06.png`: 256×256
- `reallyworld\textures\gui\content\content_07.png`: 256×256
- `reallyworld\textures\gui\content\content_08.png`: 256×256
- `reallyworld\textures\gui\content\content_09.png`: 256×256
- `reallyworld\textures\gui\content\content_10.png`: 256×256
- `reallyworld\textures\gui\content\content_11.png`: 256×256
- `reallyworld\textures\gui\content\content_12.png`: 256×256
- `reallyworld\textures\gui\content\content_13.png`: 256×256
- `reallyworld\textures\gui\content\content_14.png`: 256×256
- `reallyworld\textures\gui\content\content_15.png`: 256×256
- `reallyworld\textures\gui\content\content_16.png`: 256×256
- `reallyworld\textures\gui\content\content_17.png`: 256×256
- `reallyworld\textures\gui\content\content_18.png`: 256×256
- `reallyworld\textures\gui\content\content_19.png`: 256×256
- `reallyworld\textures\gui\content\content_1_1.png`: 256×256
- `reallyworld\textures\gui\content\content_20.png`: 256×256
- `reallyworld\textures\gui\content\content_21.png`: 256×256
- `reallyworld\textures\gui\content\content_22.png`: 256×256
- `reallyworld\textures\gui\content\content_23.png`: 256×256
- `reallyworld\textures\gui\content\content_24.png`: 256×256
- `reallyworld\textures\gui\content\content_25.png`: 256×256
- `reallyworld\textures\gui\content\content_26.png`: 256×256
- `reallyworld\textures\gui\content\content_27.png`: 256×256
- `reallyworld\textures\gui\content\content_28.png`: 256×256
- `reallyworld\textures\gui\content\content_29.png`: 256×256
- `reallyworld\textures\gui\content\content_30.png`: 256×256
- `reallyworld\textures\gui\content\content_31.png`: 256×256
- `reallyworld\textures\gui\content\content_32.png`: 256×256
- `reallyworld\textures\gui\content\content_33.png`: 256×256
- `reallyworld\textures\gui\content\content_34.png`: 256×256
- `reallyworld\textures\gui\content\content_35.png`: 256×256
- `reallyworld\textures\gui\content\content_36.png`: 256×256
- `reallyworld\textures\gui\content\content_37.png`: 256×256
- `reallyworld\textures\gui\content\content_38.png`: 256×256
- `reallyworld\textures\gui\content\content_39.png`: 256×256
- `reallyworld\textures\gui\content\content_40.png`: 256×256
- `reallyworld\textures\gui\content\content_41.png`: 256×256
- `reallyworld\textures\gui\content\content_42.png`: 256×256
- `reallyworld\textures\gui\content\content_43.png`: 256×256
- `reallyworld\textures\gui\content\content_44.png`: 256×256
- `reallyworld\textures\gui\content\content_45.png`: 256×256
- `reallyworld\textures\gui\content\content_46.png`: 256×256
- `reallyworld\textures\gui\content\content_47.png`: 256×256
- `reallyworld\textures\gui\content\content_48.png`: 256×256
- `reallyworld\textures\gui\content\content_49.png`: 256×256
- `reallyworld\textures\gui\content\content_50.png`: 256×256
- `reallyworld\textures\gui\content\content_51.png`: 256×256
- `reallyworld\textures\gui\content\content_52.png`: 256×256
- `reallyworld\textures\gui\content\content_53.png`: 256×256
- `reallyworld\textures\gui\content\content_54.png`: 256×256
- `reallyworld\textures\gui\content\content_55.png`: 256×256
- `reallyworld\textures\gui\content\content_56.png`: 256×256
- `reallyworld\textures\gui\title\title_00.png`: 512×256
- `wheel\textures\gui\categories.png`: 176×222
- `wheel\textures\gui\targets.png`: 176×222
- `wheel\textures\gui\wheel_00.png`: 176×222
- `wheel\textures\gui\wheel_01.png`: 176×222
- `wheel\textures\gui\wheel_02.png`: 176×222
- `wheel\textures\gui\wheel_03.png`: 176×222
- `wheel\textures\gui\wheel_04.png`: 176×222
- `wheel\textures\gui\wheel_05.png`: 176×222
- `wheel\textures\gui\wheel_06.png`: 176×222
- `wheel\textures\gui\wheel_07.png`: 176×222
- `wheel\textures\gui\wheel_08.png`: 176×222
- `wheel\textures\gui\wheel_09.png`: 176×222
- `wheel\textures\gui\wheel_10.png`: 176×222
- `wheel\textures\gui\wheel_11.png`: 176×222
- `wheel\textures\gui\wheel_12.png`: 176×222
- `wheel\textures\gui\wheel_13.png`: 176×222
- `wheel\textures\gui\wheel_14.png`: 176×222
- `wheel\textures\gui\wheel_15.png`: 176×222
- `wheel\textures\gui\wheel_16.png`: 176×222
- `wheel\textures\gui\wheel_17.png`: 176×222
- `wheel\textures\gui\wheel_18.png`: 176×222
- `wheel\textures\gui\wheel_19.png`: 176×222
- `wheel\textures\gui\wheel_20.png`: 176×222
- `wheel\textures\gui\wheel_21.png`: 176×222
- `wheel\textures\gui\wheel_22.png`: 176×222
- `wheel\textures\gui\wheel_23.png`: 176×222