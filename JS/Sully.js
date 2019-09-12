/*
  Comment
*/
let i = 5;
const sully = () => {
    return (
        "/*\n  Comment\n*/\n" +
        `let i = ${i};\n` +
        "const sully = " +
        sully.toString() +
        ";" +
        "\n\n" +
        "const file = " +
        file.toString() +
        ";" +
        "\n\nfile();\n"
    );
};

const file = () => {
    const fs = require("fs");
    const exec = require("child_process").exec;
    if (i > 0) {
        if (__filename.indexOf("Sully.js") === -1) { --i; }
        fs.writeFile(`Sully_${i}.js`, sully(), function (fd, err) {
            if (err) throw err;
        });
        const child = exec(`node Sully_${i}.js`, err => {
            if (err) throw err;
        });
    }
};

file();
