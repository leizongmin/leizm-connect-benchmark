"use strict";

process.chdir(__dirname);

require("sails").lift({ port: Number(process.env.PORT) });
