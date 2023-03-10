#!/Users/davidescalzo/.nvm/versions/node/v18.14.0/bin/node
const fs = require('fs')

const walk = dir => {
    fs.readdir(dir, (_, items) => {
        items.map(item => {
            const path = `${dir}/${item}`
            if (item.includes('.js')) {
                handleJS(path)
            } else {
                fs.stat(path, (_, stat) => {
                    if (stat.isDirectory()) {
                        walk(path)
                    }
                })
            }
        })
    })
}

const handleJS = file => {
    fs.readFile(file, 'utf-8', (_, data) => {
        if (data.includes(`'use client'\n`)) {
            const removedDirective = data.replace(`\n\n'use client'\n;`, '')
            const output = `'use client';\n${removedDirective}`
            fs.writeFile(file, output, () => { })
        }
    })
}

walk('../../app/src')