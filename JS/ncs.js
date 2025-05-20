function val(c) {
    if (c >= '0' && c <= '9') {
        return parseInt(c);
    } else {
        return c.charCodeAt(0) - 'A'.charCodeAt(0) + 10;
    }
}

function toDeci(str, base) {
    let len = str.length;
    let power = 1;
    let num = 0;
    for (let i = len - 1; i >= 0; i--) {
        const charVal = val(str[i]);
        if (charVal >= base) {
            console.log("Invalid Number");
            return -1;
        }
        num += charVal * power;
        power = power * base;
    }
    return num;
}

function reVal(num) {
    if (num >= 0 && num <= 9) {
        return String.fromCharCode(num + '0'.charCodeAt(0));
    } else {
        return String.fromCharCode(num - 10 + 'A'.charCodeAt(0));
    }
}

function fromDeci(base, inputNum) {
    let res = "";
    if (inputNum === 0) return "0";
    while (inputNum > 0) {
        res += reVal(inputNum % base);
        inputNum = Math.floor(inputNum / base);
    }
    return res.split('').reverse().join('');
}

// Export functions if using Node.js modules
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        val,
        toDeci,
        reVal,
        fromDeci,
        convertBase
    };
}

function convertBase(s, a, b) {
    let num = toDeci(s, a);
    if (num === -1) return;
    let ans = fromDeci(b, num);
    console.log("ANSWER: " + ans);
}
