# flutter_practice_statefullwidget

# state

1. state를 사용하고 싶으면 statefullwidget을 상속받아서 위젯을 구현하면 된다.(조금 번거로움)
2. setState메소드는 리렌더링 트리거라고 보면된다.
3. 따라서 꼭 setState메소드 안에 변경된 state를 넣어야지만 리렌더링이 되는것이 아니다.

아래 두개의 예시는 동일한 동작을 보장한다.
```
# ex1
setState(() {
    counter = counter + 1;
});

#ex2
counter = counter + 1;
setState((){});
```
setState안에 변경되는 state를 넣는것은 명확성을 위해서다.