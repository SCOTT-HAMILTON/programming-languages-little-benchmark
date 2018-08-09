use std::time::Instant;

type ULL = u64;
const MAX1: ULL = 10000;
const MAX_LOOP: ULL = 10000;
const MAX2: ULL = 38;

fn f(t: ULL, test: &mut ULL) -> ULL {
    if t == MAX1 {
        return t;
    }
    let r = t + 1;
    let l = (3123456.0f64 / 0.000123456).sqrt() * (r as f64).cos()
        / ((r as f64).powi(2).cos() * 5.0).sin();
    *test = l as ULL;
    f(r, test)
}

fn f2(t: ULL, test: &mut ULL, fps2: &mut f64) -> ULL {
    if t == MAX2 {
        return t;
    }
    let mut fps = 0.0;
    let start = 0;
    for i in 0..MAX_LOOP {
        let i_d = i as f64;
        fps = f(start, test) as f64 / i_d;
    }
    println!("{}%", t as f64 * 100.0 / MAX2 as f64);
    *fps2 = fps;
    let r = t + 1;
    f2(r, test, fps2)
}


fn main() {
    let now = Instant::now();
   

    println!("start !!!");
    let (mut fps2, mut test) = (0.0, 0);
    let start = 0;
    f2(start, &mut test, &mut fps2);

    println!("test : {}", test);
    println!("fps2 : {}", fps2);

    println!("Elapsed = {:?}", now.elapsed());
}