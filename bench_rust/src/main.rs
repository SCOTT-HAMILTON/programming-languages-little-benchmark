use std::time::Instant;

type ULL = u64;
const MAX1: ULL = 950;
const MAX_LOOP: ULL = 1000;
const MAX2: ULL = 38;

fn f(it_cur: &mut ULL, it_total: &mut ULL, result: &mut f64) -> ULL {
    if *it_cur as ULL == MAX1 {
        return *it_cur;
    }
    *it_cur += 1;
	*it_total += 1;
    *result += ((3123456.0f64 / 0.000123456).sqrt() * (*it_total as f64).cos()
        / ((*it_total as f64).powi(2).cos() * 5.0).sin()) as f64;
    return f(it_cur, it_total, result)
}

fn f2(it_cur: &mut ULL, it_total: &mut ULL, result: &mut f64) -> ULL {
    if *it_cur as ULL == MAX2 {
        return *it_cur;
    }
	let mut start = 0;
    for i in 1..MAX_LOOP+1 {
		start = 0;
        f(&mut start, it_total, result);
    }	
    println!("{}%", *it_cur as f64 * 100.0 / MAX2 as f64);
    *it_cur += 1;
	*it_total += 1;
	
    return f2(it_cur, it_total, result)
}


fn main() {
    let now = Instant::now();
   

    println!("start !!!");
    let (mut it_total, mut result) = (0, 0.0);
    let mut start = 0;
    f2(&mut start, &mut it_total, &mut result);

    println!("result : {}", result);
    println!("total iterations : {}", it_total);

    println!("Elapsed = {:?}", now.elapsed());
}