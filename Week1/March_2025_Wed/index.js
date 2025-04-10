function calculate(){
    const nbr1=parseFloat(document.getElementById("nbr").value);
    const nbr2=parseFloat(document.getElementById("snbr").value);

    let result=nbr1 + nbr2;

    document.getElementById("result").innerText = "Result: " + result;

}