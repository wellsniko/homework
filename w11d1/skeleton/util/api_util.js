const GIPHY_KEY = process.env.GIPHY_API_KEY;

export const fetchSearchGiphys = (searchTerm) => (
    $.ajax({
        method: 'GET',
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=${GIPHY_KEY}&limit=2`
    })
)

