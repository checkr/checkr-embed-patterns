import { faker } from '@faker-js/faker';

function fakeData () {
  return {
    candidates: Array(20).fill().map((item, i) => {
      return {
        address: `${faker.address.streetAddress()}, ${faker.address.state()} - ${faker.address.zipCode()}`,
        currentPosition: `${faker.name.jobTitle()} at ${faker.company.companyName()}`,
        email: faker.internet.email(),
        id: i,
        name: faker.name.findName(),
        notes: faker.lorem.paragraph(),
        lastUpdated: faker.date.past(),
        phone: faker.phone.phoneNumber(),
        step: faker.helpers.randomize(["interviewing", "offer made", "pending screening"])
      }
    }),
    funnelData: [
      ["Applicants",   12000],
      ["Pre-screened", 4000],
      ["Interviewed",  2500],
      ["Hired",        1500]
    ]
  }
}

const help = {
  'candidate-profile-actions': 'This shows an example candidate profile page with an actions dropdown which uses both Checkr Embeds via modals.',
  'candidate-pipeline': 'This shows Checkr Embeds within tabs in an example candidate listing page.',
  'full-page': 'This shows an example background check page for a candidate which uses both Checkr Embeds inline.',
  'index': 'When viewing a pattern, this section will describe more about it.'
}

function pageHelp(slug) {
  return {pageHelp: help[slug] };
}

export {fakeData, pageHelp}