const HeroRepository = require('../repositories/hero')
const HeroService = require('../services/hero')
const { join } = require('path')

const file = join(__dirname, '..', '..', 'database', 'data.json')

const makeHeroService = () => {
  const heroRepository = new HeroRepository({ file })

  return new HeroService({ heroRepository })
}

module.exports = { makeHeroService }

// makeHeroService().create({ id: 3, name: 'Super girl', age: 40, power: 'any' }).then(console.log).catch(error => console.log('error', error))