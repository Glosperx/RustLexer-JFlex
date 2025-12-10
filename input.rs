fn reguli(c1:&str, cuv2:&str)->String{
    let mut rez=c1.to_string();
    rez.push_str(cuv2);
    rez
}

// fn reguli2()

/* fn reguli2()
*/



fn main()
{
    let c1="Reguli stricte";
    let c2="Domn Student";
    let c3=9.37;

    let da:bool =true;

    let mut numere = vec![1, 2, 3, 4, 5];
    numere.push(6);

    println!("Primul numar: {}", numere[0]);
    println!("Lungime vector: {}", numere.len());

    println!("Rezultat:{}",reguli(c1,c2));


}