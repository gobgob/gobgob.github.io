// Load the classic theme
Galleria.loadTheme('js/galleria/themes/classic/galleria.classic.min.js');

// Initialize Galleria
Galleria.run('#galleria', {

    // search flickr for "galleria"
    //flickr: 'user:96585783@N02',
    flickr: 'search:chatons',
    
    flickrOptions: {
        // sort by interestingness
        sort: 'interestingness-desc'
    }
});