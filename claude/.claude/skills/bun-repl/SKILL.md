---
name: bun-repl
description: Evaluate JavaScript/TypeScript expressions using bun repl. Use when user wants to quickly test code, evaluate expressions, run snippets, or use an interactive JS/TS shell.
argument-hint: [expression or file path]
allowed-tools: Bash, Read, Write
---

# Bun REPL

Evaluate JS/TS code using `bun repl`.

## Modes

### Quick eval (expression given as $ARGUMENTS)

Run the expression non-interactively:

```bash
bun repl -p "$ARGUMENTS"
```

Use `-p` to print the result. Use `-e` if the code already has `console.log`.

### Load a file into REPL context

If $ARGUMENTS is a file path:

```bash
bun repl -e "$(cat $ARGUMENTS)"
```

### No arguments

If no $ARGUMENTS provided, tell the user they can:
- `/bun-repl 2 + 2` — eval an expression
- `/bun-repl await fetch('https://example.com').then(r => r.status)` — async works
- `/bun-repl ./script.ts` — eval a file

## Features available

- TypeScript & JSX — transpiled on the fly
- Top-level `await` — no async wrapper needed
- ESM & CJS — `import` and `require` both work
- Bare objects like `{ a: 1 }` treated as expressions, not blocks

## Important

- For multi-statement code, join with `;` or use `-e` flag
- On error, process exits with code 1
