void putchar(int c);

int fact(int a) {
    return a == 1 ? 1 : a * fact(a-1);
}

int pow10(int n) {
    int i = 0;
    int res = 1;
    for (i = 0; i < n; i = i + 1)
    {
        res = res * 10;
    }
    return res;
}

int pow(int a, int exp) {
    int i;
    int res;
    res = a;
    for (i = exp; i > 1; i = i - 1)
    {
        res = res * a;
    }
    return res;
}

int num_at(int n, int pos) {
    int ret;
    if (pos == 10)
    {
        ret = ((n >= 1000000000) && (n < 2000000000)) ? 1 : (n >= 2000000000) ? 2 : 0;
    }
    else
    {
        ret = (n / pow10(pos-1)) - (n / pow10(pos) * 10);
    }
    return ret;
}

void print_int(int a) {
    int iter;
    bool print_zero = false;
    int n;
    if (a < 0)
    {
        putchar(45);
        a = -a;
    }
    for (iter = 10; iter > 0; iter = iter - 1)
    {
        n = num_at(a, iter);
        if (iter == 1 || print_zero || n != 0)
        {
            print_zero = true;
            putchar(48+n);
        }
    }
    return;
}

int[3] g_arr;

int[3] foo() {
    int[3] arr;
    arr = g_arr;
    arr[1] = 42;

    print_int(g_arr[1]); putchar(10);
    return arr;
}

int a = g_arr[1];
print_int(g_arr[1]); putchar(10);
print_int(a); putchar(10);
print_int(42);print_int(0);print_int(42);putchar(10);
