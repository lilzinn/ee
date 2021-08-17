const welcome = (number, groupname) => {
    return `Seja bem-vindo @${number}. ao ${groupname}`
}
exports.welcome = welcome

const bye = (number) => {
    return `Adeus @${number}. Já vai tarde 👋`
}
exports.bye = bye
