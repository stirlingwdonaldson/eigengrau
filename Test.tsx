// ── Comment (fg2, italic) ───────────────────────────────
// This is a single-line comment
/* This is a block comment */

// ── TODO / NOTE / FIXME (@comment.todo, @comment.note, @comment.error) ──
// TODO: this should be yellow bold
// NOTE: this should be blue bold
// FIXME: this should be red bold

// ── Keywords (white, bold) ──────────────────────────────
import React, { useState, useEffect, type ReactNode } from "react";
export default function App() {}
const x = 1;
let y = 2;
if (x) {
} else {
}
for (const i of [1, 2, 3]) {
}
while (false) {}
switch (x) {
	case 1:
		break;
	default:
		break;
}
try {
	throw new Error("boom");
} catch (e) {
	console.error(e);
} finally {
}
return;

// ── Strings (yellow) ───────────────────────────────────
const singleQuote = 'hello world';
const doubleQuote = "hello world";
const templateLiteral = `hello ${singleQuote}`;
const escaped = "newline:\n\ttab";
const regex = /foo.*bar/gi;

// ── Numbers / Booleans / Constants (yellow) ─────────────
const integer = 42;
const float = 3.14159;
const hex = 0xff;
const binary = 0b1010;
const octal = 0o77;
const big = 100_000_000n;
const yes = true;
const no = false;
const nothing = null;
const missing = undefined;
const inf = Infinity;
const nan = NaN;



// ── Functions (blue) ────────────────────────────────────
function greet(name: string): string {
	return `Hello, ${name}`;
}
const add = (a: number, b: number): number => a + b;
const result = greet("world");
const sum = add(1, 2);
console.log(result);
Math.max(1, 2, 3);
Array.isArray([]);
JSON.stringify({ key: "value" });

// ── Types / Interfaces / Enums (fg0) ────────────────────
interface User {
	id: number;
	name: string;
	email: string;
	readonly role: Role;
	active: boolean;
}

type Status = "active" | "inactive" | "pending";
type Nullable<T> = T | null;
type UserMap = Record<string, User>;

enum Role {
	Admin = "ADMIN",
	Editor = "EDITOR",
	Viewer = "VIEWER",
}

// ── Classes (fg0, methods blue) ─────────────────────────
class EventEmitter<T> {
	private listeners: Map<string, ((data: T) => void)[]> = new Map();

	public on(event: string, callback: (data: T) => void): void {
		const existing = this.listeners.get(event) ?? [];
		existing.push(callback);
		this.listeners.set(event, existing);
	}

	public emit(event: string, data: T): void {
		const handlers = this.listeners.get(event);
		if (!handlers) return;
		for (const handler of handlers) {
			handler(data);
		}
	}

	protected clear(): void {
		this.listeners.clear();
	}
}

// ── Builtins / Variable.builtin (red) ───────────────────
console.log(this);
const arr = [1, 2, 3];
const len = arr.length;
const proto = Object.getPrototypeOf(arr);
const err = new TypeError("bad argument");

// ── Operators / Punctuation (fg1, fg2) ──────────────────
const a = 1 + 2 - 3 * 4 / 5 % 6;
const b = a > 0 && a < 100 || a === 0;
const c = !b;
const d = a ?? 0;
const e = b ? "yes" : "no";
const spread = { ...{ x: 1 }, ...{ y: 2 } };
const destructured = { x: spread.x, y: spread.y };

// ── Properties / Fields (fg0) ───────────────────────────
const user: User = {
	id: 1,
	name: "Stirling",
	email: "s@example.com",
	role: Role.Admin,
	active: true,
};
const userName = user.name;
const userRole = user.role;

// ── Generics / Type Parameters (fg0 italic) ─────────────
function identity<T>(value: T): T {
	return value;
}
function map<T, U>(arr: T[], fn: (item: T) => U): U[] {
	return arr.map(fn);
}
const mapped = map([1, 2, 3], (n) => n.toString());

// ── Decorators (fg1) ────────────────────────────────────
function Log(_target: any, key: string, desc: PropertyDescriptor) {
	const original = desc.value;
	desc.value = function (...args: any[]) {
		console.log(`Calling ${key} with`, args);
		return original.apply(this, args);
	};
}

class Service {
	@Log
	process(data: string): string {
		return data.toUpperCase();
	}
}

// ── JSX / Tags (blue, attributes fg1) ───────────────────
interface Props {
	title: string;
	count: number;
	children?: ReactNode;
}

function Component({ title, count, children }: Props) {
	const [value, setValue] = useState(0);

	useEffect(() => {
		document.title = title;
	}, [title]);

	return (
		<div className="container" data-testid="main">
			<h1>{title}</h1>
			<span style={{ color: "red", fontSize: 14 }}>
				Count: {count}
			</span>
			<button onClick={() => setValue((v) => v + 1)}>
				Increment: {value}
			</button>
			{children}
			<br />
			<input type="text" placeholder="type here..." />
		</div>
	);
}

// ── Async / Await / Promise (keywords white bold) ───────
async function fetchData(url: string): Promise<User[]> {
	const response = await fetch(url);
	if (!response.ok) {
		throw new Error(`HTTP ${response.status}`);
	}
	return response.json() as Promise<User[]>;
}

// ── Deprecated (red_dim, strikethrough) ─────────────────
/** @deprecated Use fetchData instead */
function oldFetch(): void {}

// ── Readonly (yellow via @lsp.mod.readonly) ─────────────
const CONFIG = {
	API_URL: "https://api.example.com",
	TIMEOUT: 5000,
	MAX_RETRIES: 3,
} as const;

// ── Diff-like indicators (green/yellow/red in gitsigns) ─
// Added lines show green in the gutter
// Modified lines show yellow in the gutter
// Deleted lines show red in the gutter

// ── Error patterns (red) ────────────────────────────────
// @ts-expect-error intentional type error for demo
const wrong: number = "this is not a number";

// ── Search / Visual (yellow bg, bg3) ────────────────────
// Try searching for "function" or "const" to see Search highlights
// Select text in visual mode to see Visual highlights

export { Component, fetchData, EventEmitter, Role, type User, type Status };
