import { addParameters, configure } from '@storybook/react';
import { themes } from '@storybook/theming';

addParameters({
    options: {
        theme: themes.dark,
    },
});

const comps = require.context('@masterclass-project/components/src', true, /.stories.tsx$/);
const pages = require.context('@masterclass-project/pages/src', true, /.stories.tsx$/);

configure(() => {
    comps.keys().forEach(filename => comps(filename));
    pages.keys().forEach(filename => pages(filename));
}, module);
