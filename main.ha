use fmt;
use strings;

fn printProgram(text: str) void = {
    let itr = strings::iter(text);

    for (let letter => strings::next(&itr)) {
        if (strings::toutf8(strings::fromrunes([letter]))[0] == 37u8) {
            let newText = strings::replace(text, "\\", "\\\\");
            newText = strings::replace(newText, "\"", "\\\"");
            newText = strings::replace(newText, "\n", "\",\n    \"");
            fmt::print(newText)!;
        } else {
            fmt::print(letter)!;
        };
    };
};

export fn main() void = {
    const program = strings::join("\n",
    "use fmt;",
    "use strings;",
    "",
    "fn printProgram(text: str) void = {",
    "    let itr = strings::iter(text);",
    "",
    "    for (let letter => strings::next(&itr)) {",
    "        if (strings::toutf8(strings::fromrunes([letter]))[0] == 37u8) {",
    "            let newText = strings::replace(text, \"\\\\\", \"\\\\\\\\\");",
    "            newText = strings::replace(newText, \"\\\"\", \"\\\\\\\"\");",
    "            newText = strings::replace(newText, \"\\n\", \"\\\",\\n    \\\"\");",
    "            fmt::print(newText)!;",
    "        } else {",
    "           fmt::print(letter)!;",
    "        };",
    "    };",
    "};",
    "",
    "export fn main() void = {",
    "    const program = strings::join(\"\\n\",\n    "
    "\"%\");",
    "",
    "    printProgram(program);",
    "};");

    printProgram(program);
};
