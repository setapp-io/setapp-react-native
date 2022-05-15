# setapp

React native library for setapp application

## Installation

```sh
npm install @setapp.io/setapp
```

## Usage

#### Get int value
```js
import { getInt, getIntOrNull } from "setapp";

// ...
const result: number = await getInt('YOUR_KEY_HERE', -1);
const result: number | null = await getIntOrNull('YOUR_KEY_HERE');
```

#### Get long value
```js
import { getLong, getLongOrNull } from "setapp";

// ...
const result: number = await getLong('YOUR_KEY_HERE', -1);
const result: number | null = await getLongOrNull('YOUR_KEY_HERE');
```

#### Get float value
```js
import { getFloat, getFloatOrNull } from "setapp";

// ...
const result: number = await getFloat('YOUR_KEY_HERE', -1);
const result: number | null = await getFloatOrNull('YOUR_KEY_HERE');
```

#### Get string value
```js
import { getString, getStringOrNull } from "setapp";

// ...
const result = await getString('YOUR_KEY_HERE', '');
const result = await getStringOrNull('YOUR_KEY_HERE');
```

#### Get boolean value
```js
import { getBoolean, getBooleanOrNull } from "setapp";

// ...
const result: boolean = await getBoolean('YOUR_KEY_HERE', false);
const result: boolean | null = await getBooleanOrNull('YOUR_KEY_HERE');
```

## License

Apache License Version 2.0
