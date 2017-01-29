USER = "gotcha2"


def test_user(User):
    gotcha = User(USER)
    assert gotcha.exists
    assert not User('marie').exists


def test_process(Process):
    bash = Process.filter(comm='bash', user=USER)
    assert len(bash) > 1
