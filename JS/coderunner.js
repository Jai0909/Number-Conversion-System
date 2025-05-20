const readline = require('readline');
const { convertBase } = require('./ncs.js'); // Import convertBase from ncs.js

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('ENTER TEXT TO BE CONVERTED: ', (s) => {
    rl.question('ENTER BASE TO BE CONVERTED FROM: ', (a) => {
        rl.question('ENTER BASE TO BE CONVERTED TO: ', (b) => {
            convertBase(s.toUpperCase(), parseInt(a), parseInt(b));
            rl.close();
        });
    });
});
