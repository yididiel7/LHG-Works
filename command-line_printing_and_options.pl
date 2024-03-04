# Command-Line Printing and Options

CUPS provides both the System V (lp(1)) and Berkeley (lpr(1)) printing commands for printing files. In addition, it supported a large number of standard and printer-specific options that allow you to control how and where files are printed.
Printing Files

CUPS understands many different types of files directly, including text, PostScript, PDF, and image files. This allows you to print from inside your applications or at the command-line, whichever is most convenient! Type either of the following commands to print a file to the default (or only) printer on the system:

lp filename
lpr filename

Choosing a Printer

Many systems will have more than one printer available to the user. These printers can be attached to the local system via a parallel, serial, or USB port, or available over the network. Use the lpstat(1) command to see a list of available printers:

lpstat -p -d

The -p option specifies that you want to see a list of printers, and the -d option reports the current default printer or class.

Use the -d option with the lp command to print to a specific printer:

lp -d printer filename

or the -P option with the lpr command:

lpr -P printer filename

Setting the Default Printer

If you normally use a particular printer, you can tell CUPS to use it by default using the lpoptions(1) command:

lpoptions -d printer

Printing the Output of a Program

Both the lp and lpr commands support printing from the standard input:

program | lp
program | lp -d printer
program | lpr
program | lpr -P printer

If the program does not provide any output, then nothing will be queued for printing.
Specifying Printer Options

For many types of files, the default printer options may be sufficient for your needs. However, there may be times when you need to change the options for a particular file you are printing.

The lp and lpr commands allow you to pass printer options using the -o option:

lp -o landscape -o fit-to-page -o media=A4 filename.jpg
lpr -o landscape -o fit-to-page -o media=A4 filename.jpg

The available printer options vary depending on the printer. The standard options are described in the "Standard Printing Options" section below. Printer-specific options are also available and can be listed using the lpoptions command:

lpoptions -p printer -l

Creating Saved Options

Saved options are supported in CUPS through printer instances. Printer instances are, as their name implies, copies of a printer that have certain options associated with them. Use the lpoptions command to create a printer instance:

lpoptions -p printer/instance -o name=value ...

The -p printer/instance option provides the name of the instance, which is always the printer name, a slash, and the instance name which can contain any printable characters except space and slash. The remaining options are then associated with the instance instead of the main queue. For example, the following command creates a duplex instance of the LaserJet queue:

lpoptions -p LaserJet/duplex -o sides=two-sided-long-edge

Instances do not inherit lpoptions from the main queue.
Printing Multiple Copies

Both the lp and lpr commands have options for printing more than one copy of a file:

lp -n num-copies filename
lpr -#num-copies filename

Copies are normally not collated for you. Use the -o collate=true option to get collated copies:

lp -n num-copies -o collate=true filename
lpr -#num-copies -o collate=true filename

Canceling a Print Job

The cancel(1) and lprm(1) commands cancel a print job:

cancel job-id
lprm job-id

The job-id is the number that was reported to you by the lp command. You can also get the job ID using the lpq(1) or lpstat commands:

lpq
lpstat

Moving a Print Job

The lpmove(8) command moves a print job to a new printer or class:

lpmove job-id destination

The job-id is the number that was reported to you by the lp or lpstat commands. Destination is the name of a printer or class that you want to actually print the job.

    Note:

    The lpmove command is located in the system command directory (typically /usr/sbin or /usr/local/sbin), and so may not be in your command path. Specify the full path to the command if you get a "command not found" error, for example:

    /usr/sbin/lpmove foo-123 bar

Standard Printing Options

The following options apply when printing all types of files.
Selecting the Media Size, Type, and Source

The -o media=xyz option sets the media size, type, and/or source:

lp -o media=Letter filename
lp -o media=Letter,MultiPurpose filename
lpr -o media=Letter,Transparency filename
lpr -o media=Letter,MultiPurpose,Transparency filename

The available media sizes, types, and sources depend on the printer, but most support the following options (case is not significant):

    Letter - US Letter (8.5x11 inches, or 216x279mm)
    Legal - US Legal (8.5x14 inches, or 216x356mm)
    A4 - ISO A4 (8.27x11.69 inches, or 210x297mm)
    COM10 - US #10 Envelope (9.5x4.125 inches, or 241x105mm)
    DL - ISO DL Envelope (8.66x4.33 inches, or 220x110mm)
    Transparency - Transparency media type or source
    Upper - Upper paper tray
    Lower - Lower paper tray
    MultiPurpose - Multi-purpose paper tray
    LargeCapacity - Large capacity paper tray 

The actual options supported are defined in the printer's PPD file in the PageSize, InputSlot, and MediaType options. You can list them using the lpoptions(1) command:

lpoptions -p printer -l

When Custom is listed for the PageSize option, you can specify custom media sizes using one of the following forms:

lp -o media=Custom.WIDTHxLENGTH filename
lp -o media=Custom.WIDTHxLENGTHin filename
lp -o media=Custom.WIDTHxLENGTHcm filename
lp -o media=Custom.WIDTHxLENGTHmm filename

where "WIDTH" and "LENGTH" are the width and length of the media in points, inches, centimeters, or millimeters, respectively.
Setting the Orientation

The -o landscape option will rotate the page 90 degrees to print in landscape orientation:

lp -o landscape filename
lpr -o landscape filename

The -o orientation-requested=N option rotates the page depending on the value of N:

    -o orientation-requested=3 - portrait orientation (no rotation)
    -o orientation-requested=4 - landscape orientation (90 degrees)
    -o orientation-requested=5 - reverse landscape or seascape orientation (270 degrees)
    -o orientation-requested=6 - reverse portrait or upside-down orientation (180 degrees)

Printing On Both Sides of the Paper

The -o sides=two-sided-short-edge and -o sides=two-sided-long-edge options will enable two-sided printing on the printer if the printer supports it. The -o sides=two-sided-short-edge option is suitable for landscape pages, while the -o sides=two-sided-long-edge option is suitable for portrait pages:

lp -o sides=two-sided-short-edge filename
lp -o sides=two-sided-long-edge filename
lpr -o sides=two-sided-long-edge filename

The default is to print single-sided:

lp -o sides=one-sided filename
lpr -o sides=one-sided filename

Selecting the Banner Page(s)

The -o job-sheets=start,end option sets the banner page(s) to use for a job:

lp -o job-sheets=none filename
lp -o job-sheets=standard filename
lpr -o job-sheets=classified,classified filename

If only one banner file is specified, it will be printed before the files in the job. If a second banner file is specified, it is printed after the files in the job.

The available banner pages depend on the local system configuration; CUPS includes the following banner files:

    none - Do not produce a banner page.
    classified - A banner page with a "classified" label at the top and bottom.
    confidential - A banner page with a "confidential" label at the top and bottom.
    secret - A banner page with a "secret" label at the top and bottom.
    standard - A banner page with no label at the top and bottom.
    topsecret - A banner page with a "top secret" label at the top and bottom.
    unclassified - A banner page with an "unclassified" label at the top and bottom. 

Holding Jobs for Later Printing

The -o job-hold-until=when option tells CUPS to delay printing until the "when" time, which can be one of the following:

    -o job-hold-until=indefinite; print only after released by the user or an administrator
    -o job-hold-until=day-time; print from 6am to 6pm local time
    -o job-hold-until=night; print from 6pm to 6am local time
    -o job-hold-until=second-shift; print from 4pm to 12am local time
    -o job-hold-until=third-shift; print from 12am to 8am local time
    -o job-hold-until=weekend; print on Saturday or Sunday
    -o job-hold-until=HH:MM; print at the specified UTC time

Releasing Held Jobs

Aside from the web interface, you can use the lp command to release a held job:

lp -i job-id -H resume

where "job-id" is the job ID reported by the lpstat command.
Setting the Job Priority

The -o job-priority=NNN option tells CUPS to assign a priority to your job from 1 (lowest) to 100 (highest), which influences where the job appears in the print queue. Higher priority jobs are printed before lower priority jobs, however submitting a new job with a high priority will not interrupt an already printing job.
Specifying the Output Order

The -o outputorder=normal and -o outputorder=reverse options specify the order of the pages. Normal order prints page 1 first, page 2 second, and so forth. Reverse order prints page 1 last.
Selecting a Range of Pages

The -o page-ranges=pages option selects a range of pages for printing:

lp -o page-ranges=1 filename
lp -o page-ranges=1-4 filename
lp -o page-ranges=1-4,7,9-12 filename
lpr -o page-ranges=1-4,7,9-12 filename

As shown above, the pages value can be a single page, a range of pages, or a collection of page numbers and ranges separated by commas. The pages will always be printed in ascending order, regardless of the order of the pages in the page-ranges option.

The default is to print all pages.

    Note:

    The page numbers used by page-ranges refer to the output pages and not the document's page numbers. Options like number-up can make the output page numbering not match the document page numbers.

N-Up Printing

The -o number-up=value option selects N-Up printing. N-Up printing places multiple document pages on a single printed page. CUPS supports 1, 2, 4, 6, 9, and 16-Up formats; the default format is 1-Up:

lp -o number-up=1 filename
lp -o number-up=2 filename
lp -o number-up=4 filename
lpr -o number-up=16 filename

The -o page-border=value option chooses the border to draw around each page:

    -o page-border=double; draw two hairline borders around each page
    -o page-border=double-thick; draw two 1pt borders around each page
    -o page-border=none; do not draw a border (default)
    -o page-border=single; draw one hairline border around each page
    -o page-border=single-thick; draw one 1pt border around each page

The -o number-up-layout=value option chooses the layout of the pages on each output page:

    -o number-up-layout=btlr; Bottom to top, left to right
    -o number-up-layout=btrl; Bottom to top, right to left
    -o number-up-layout=lrbt; Left to right, bottom to top
    -o number-up-layout=lrtb; Left to right, top to bottom (default)
    -o number-up-layout=rlbt; Right to left, bottom to top
    -o number-up-layout=rltb; Right to left, top to bottom
    -o number-up-layout=tblr; Top to bottom, left to right
    -o number-up-layout=tbrl; Top to bottom, right to left

Scaling to Fit

The -o fit-to-page option specifies that the document should be scaled to fit on the page:

lp -o fit-to-page filename
lpr -o fit-to-page filename

The default is to use the size specified in the file.

    Note:

    This feature depends upon an accurate size in the print file. If no size is given in the file, the page may be scaled incorrectly! 

Printing in Reverse Order

The -o outputorder=reverse option will print the pages in reverse order:

lp -o outputorder=reverse filename
lpr -o outputorder=reverse filename

Similarly, the -o outputorder=normal option will print starting with page 1:

lp -o outputorder=normal filename
lpr -o outputorder=normal filename

The default is -o outputorder=normal for printers that print face down and -o outputorder=reverse for printers that print face up.
Printing Mirrored Pages

The -o mirror option flips each page along the vertical axis to produce a mirrored image:

lp -o mirror filename
lpr -o mirror filename

This is typically used when printing on T-shirt transfer media or sometimes on transparencies.

Copyright (C) 2024 by Tyrone Hills All rights reserved <mobw4u@gmail.com>.
